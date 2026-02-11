<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { ref, watch, onMounted, computed } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched } from '@/utils'
import { useLocaleStore } from '@/stores/locale'
import Slider from '@vueform/slider'
import {
  Listbox,
  ListboxButton,
  ListboxLabel,
  ListboxOption,
  ListboxOptions
} from '@headlessui/vue'
import { CheckIcon, ChevronUpDownIcon } from '@heroicons/vue/20/solid'
import { useLoansStore } from '@/stores/loans'

const locale = useLocaleStore()
const bank = useBankStore()
const loans = useLoansStore()

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const types = ref<Record<string, string>[]>([])
const loanType = ref()
const minLoanAmount = ref<number>(0)
const maxLoanAmount = ref<number>(100)
const loanAmountStep = ref<number>(1)
const minLoanDuration = ref<number>(0)
const maxLoanDuration = ref<number>(12)
const interestRate = ref<number>(13)
const paymentCycleType = ref<number>(2)
const availableLoans = ref<Record<string, any>>({})

const interestRateAmount = computed<number>(() => (loanAmount.value * interestRate.value) / 100)

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
    responseError.value = ''
  }
}

watch(loanType, (value) => {
  if (value) {
    minLoanAmount.value = availableLoans.value[value.value].loan.amountSliderStep
    maxLoanAmount.value = availableLoans.value[value.value].loan.maximumAmount
    loanAmountStep.value = availableLoans.value[value.value].loan.amountSliderStep
    minLoanDuration.value = availableLoans.value[value.value].loan.minimumPayments
    maxLoanDuration.value = availableLoans.value[value.value].loan.maximumPayments
    interestRate.value = availableLoans.value[value.value].loan.interestRate
    paymentCycleType.value = availableLoans.value[value.value].loan.paymentCycle

    loanAmount.value = minLoanAmount.value
    loanDuration.value = minLoanDuration.value
  }
})

const amountFormatter = (value: number) => {
  return value.toLocaleString(locale.get('currency_language'), {
    style: 'currency',
    currency: locale.get('currency')
  })
}

const durationFormatter = (value: number) => {
  let durationType = paymentCycleType.value === 1 ? 'day' : 'week'
  let durationPlural = value === 1 ? 'single' : 'plural'

  const localized = locale.get(`${durationType}_${durationPlural}`)

  return `${Math.round(value)} ${localized}`
}

const pluralizedDuration = computed(() => {
  let durationType = paymentCycleType.value === 1 ? 'day' : 'week'
  let durationPlural = loanDuration.value === 1 ? 'single' : 'plural'

  const localized = locale.get(`${durationType}_${durationPlural}`)

  return `${localized}`
})

const schema = computed(() => {
  return toFormValidator(
    zod.object({
      loanAmount: zod
        .number({
          invalid_type_error: locale.get('loan_amount_must_be_a_number'),
          required_error: locale.get('loan_amount_is_required')
        })
        .min(minLoanAmount.value, locale.get('loan_amount_is_too_low'))
        .max(maxLoanAmount.value, locale.get('loan_amount_is_too_high')),
      loanDuration: zod
        .number({
          invalid_type_error: locale.get('loan_duration_must_be_a_number'),
          required_error: locale.get('loan_duration_is_required')
        })
        .min(minLoanDuration.value, locale.get('loan_duration_is_too_low'))
        .max(maxLoanDuration.value, locale.get('loan_duration_is_too_high'))
    })
  )
})

const { handleSubmit } = useForm({
  validationSchema: schema
})

const { value: loanAmount, errorMessage: loanAmountError } = useField<number>('loanAmount')
const { value: loanDuration, errorMessage: loanDurationError } = useField<number>('loanDuration')

const fetchAvailableLoans = async () => {
  try {
    const request = await fetched(`https://${loans.loansResource}/fetchAvailableGovermentLoans`, {
      method: 'POST',
      body: JSON.stringify({})
    })

    const response: Record<string, any> = await request.json()

    if (response) {
      availableLoans.value = response

      types.value = []
      for (const [key, value] of Object.entries(availableLoans.value)) {
        types.value.push({ value: key, label: value.label })
      }
    }
  } catch (error: any) {
    closeModal()
  }
}

onMounted(() => {
  fetchAvailableLoans()
})

const requestHandle = handleSubmit(async () => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      const response = await fetched(`https://${loans.loansResource}/makeGovermentLoanRequest`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          type: loanType.value.value,
          amount: loanAmount.value,
          duration: loanDuration.value
        })
      })
      const data = await response.json()

      isDoingAction.value = false
      if (!data.success) {
        throw new Error(locale.get('loan_request_failed_please_try_again'))
      }

      //   bank.fetchAccount(props.id!, true)
      closeModal()
    } catch (e) {
      responseError.value = locale.get('loan_request_failed_please_try_again')
      isDoingAction.value = false
    }
  }
})
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    :clickToClose="!isDoingAction"
    :escToClose="!isDoingAction"
    class="flex justify-center items-center"
    content-class="flex flex-col max-w-md w-full p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">
        {{ locale.get('new_loan_title') }}
      </h1>
      <a href="#" @click.prevent="emit('closeModal')">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">{{ locale.get('new_loan_description') }} <br /><br /></p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <Listbox as="div" v-model="loanType" :disabled="isDoingAction">
      <ListboxLabel class="block text-sm font-medium leading-6 text-gray-200 mt-2">
        {{ locale.get('loan_type_label') }}
      </ListboxLabel>
      <div class="relative mt-2">
        <ListboxButton
          class="relative w-full cursor-default rounded-md py-1.5 pl-3 pr-10 text-left text-gray-900 shadow-sm ring-1 ring-inset ring-[#373A40] focus:outline-none focus:ring-0.5 focus:ring-gray-500 sm:text-sm sm:leading-6"
        >
          <span class="block truncate text-white">{{
            loanType?.label ?? locale.get('loan_select_type_placeholder')
          }}</span>
          <span class="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-2">
            <ChevronUpDownIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
          </span>
        </ListboxButton>

        <transition
          leave-active-class="transition ease-in duration-100"
          leave-from-class="opacity-100"
          leave-to-class="opacity-0"
        >
          <ListboxOptions
            class="absolute z-10 mt-1 max-h-60 w-full overflow-auto rounded-md bg-[#25262b] py-1 text-base shadow-lg ring-1 ring-[#373A40] focus:outline-none sm:text-sm"
          >
            <ListboxOption
              as="template"
              v-for="type in types"
              :key="type.value"
              :value="type"
              v-slot="{ active, selected }"
            >
              <li
                :class="[
                  active ? 'bg-[#85b899] text-white' : 'text-gray-300',
                  'relative cursor-default select-none py-2 pl-3 pr-9'
                ]"
              >
                <span :class="[selected ? 'font-semibold' : 'font-normal', 'block truncate']">{{
                  type.label
                }}</span>

                <span
                  v-if="selected"
                  :class="[
                    active ? 'text-white' : 'text-[#85b899]',
                    'absolute inset-y-0 right-0 flex items-center pr-4'
                  ]"
                >
                  <CheckIcon class="h-5 w-5" aria-hidden="true" />
                </span>
              </li>
            </ListboxOption>
          </ListboxOptions>
        </transition>
      </div>
    </Listbox>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3 px-1" @submit.prevent="requestHandle()" v-if="loanType">
      <div class="mt-7">
        <div class="mt-2">
          <Slider
            id="loanAmount"
            v-model="loanAmount"
            :min="minLoanAmount"
            :max="maxLoanAmount"
            :step="loanAmountStep"
            :format="amountFormatter"
          />
        </div>
        <label for="amount" class="block text-sm font-medium leading-6 text-gray-200 mt-2">
          {{ locale.get('loan_amount_label') }}
        </label>
        <p class="mt-1 text-sm text-red-400" v-if="loanAmountError">
          {{ loanAmountError }}
        </p>
      </div>
      <div class="mt-7">
        <div class="mt-2">
          <Slider
            v-model="loanDuration"
            :min="minLoanDuration"
            :max="maxLoanDuration"
            :format="durationFormatter"
          />
        </div>
        <label for="amount" class="block text-sm font-medium leading-6 text-gray-200 mt-2">
          {{ locale.get('loan_payments_label') }}
        </label>
        <p class="mt-1 text-sm text-red-400" v-if="loanDurationError">
          {{ loanDurationError }}
        </p>
      </div>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div class="block">
        <p class="text-white font-semibold text-right">
          {{ locale.get('interest_rate_title') }}: {{ interestRate }}%
        </p>
        <p class="text-white font-semibold text-right">
          {{ locale.get('loan_duration_title') }}: {{ loanDuration }}
          {{ pluralizedDuration }}
        </p>
        <p class="text-white font-semibold text-right">
          {{ locale.get('loan_each_payment_title') }}:
          {{
            ((loanAmount + interestRateAmount) / loanDuration).toLocaleString(
              locale.get('currency_language'),
              {
                style: 'currency',
                currency: locale.get('currency')
              }
            )
          }}
        </p>
        <p class="text-white font-semibold text-right">
          {{ locale.get('interest_rate_amount_title') }}:
          {{
            interestRateAmount.toLocaleString(locale.get('currency_language'), {
              style: 'currency',
              currency: locale.get('currency')
            })
          }}
        </p>
        <p class="text-white font-semibold text-right">
          {{ locale.get('loan_total_amount_with_interest_title') }}:
          {{
            (loanAmount + interestRateAmount).toLocaleString(locale.get('currency_language'), {
              style: 'currency',
              currency: locale.get('currency')
            })
          }}
        </p>
      </div>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div>
        <p class="mt-1 text-sm text-red-400" v-if="responseError">
          {{ responseError }}
        </p>
        <button
          type="submit"
          :class="[...bank.currentTheme.button, isDoingAction ? 'btn-loading' : '']"
          :disabled="isDoingAction"
          class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('request_modal_confirm_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
