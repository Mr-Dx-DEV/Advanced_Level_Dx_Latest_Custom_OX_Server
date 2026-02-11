<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { onMounted, ref } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched, resource } from '@/utils'
import { useLocaleStore } from '@/stores/locale'
import { EventBus } from '@/event-bus'

const locale = useLocaleStore()
const bank = useBankStore()

const props = defineProps<{
  id?: number | undefined
  name?: string
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const closeModal = (skip: boolean = false) => {
  if (!isDoingAction.value || skip) {
    emit('closeModal')
    responseError.value = ''
  }
}

const validationSchema = toFormValidator(
  zod.object({
    amount: zod
      .number({
        invalid_type_error: locale.get('amount_must_be_a_number'),
        required_error: locale.get('amount_is_required')
      })
      .min(1, locale.get('amount_must_be_greater_than_0'))
      .max(1000000000, locale.get('amount_must_be_less_than_1000000000'))
      .refine((value) => Number.isInteger(value), locale.get('amount_must_be_integer'))
      .refine((value) => value <= bank.cash, locale.get('you_dont_have_enough_cash')),
    description: zod
      .string({
        invalid_type_error: locale.get('description_must_be_a_string'),
        required_error: locale.get('description_is_required')
      })
  })
)

const { handleSubmit } = useForm({
  validationSchema
})

const { value: amount, errorMessage: amountError } = useField('amount')
const { value: description, errorMessage: descriptionError } = useField('description')

const depositHandle = handleSubmit(async (values) => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      const response = await fetched(`https://${resource()}/depositMoney`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          amount: values.amount,
          reason: values.description,
          id: props.id
        })
      })

      const data = await response.json()

      isDoingAction.value = false

      if (!data) {
        responseError.value = locale.get('deposit_failed_please_try_again')

        setTimeout(() => {
          isDoingAction.value = false
        }, 2500)

        setTimeout(() => {
          closeModal(true)
        }, 1500)

        return
      }

      isDoingAction.value = false
      bank.fetchAccount(props.id!, true)
      closeModal()
    } catch (e) {
      responseError.value = locale.get('deposit_failed_please_try_again')

      setTimeout(() => {
        isDoingAction.value = false
      }, 2500)

      setTimeout(() => {
        EventBus.emit('bank:close')

        try {
          fetch(`https://${resource()}/bankClosed`, {
            method: 'POST'
          })
        } catch (e) {
          console.log('Bank closed, DepositModal')
          console.error(e)
        }
      }, 1500)
    }
  }
})

onMounted(() => {
  bank.fetchCash()
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
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('deposit_title') }}</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('deposit_description') }} <br /><br />
      {{ locale.get('deposit_in_description') }}
      <span class="font-semibold text-gray-300"> {{ name ?? locale.get('unknown') }} </span>.
    </p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="depositHandle()">
      <div>
        <label for="amount" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('amount_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="amount"
            type="number"
            name="amount"
            id="amount"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            placeholder="200"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="amountError">
          {{ amountError }}
        </p>
        <p class="mt-2 text-sm text-gray-500">
          {{ locale.get('in_pocket_you_have') }}
          <span class="font-semibold text-green-600">{{
            bank.cash.toLocaleString(locale.get('currency_language'), {
              style: 'currency',
              currency: locale.get('currency')
            })
          }}</span>
        </p>
      </div>
      <div>
        <label for="description" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('description_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="description"
            type="text"
            name="description"
            id="description"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            :placeholder="locale.get('deposit_modal_description_placeholder')"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="descriptionError">
          {{ descriptionError }}
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
          {{ locale.get('deposit_modal_confirm_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
