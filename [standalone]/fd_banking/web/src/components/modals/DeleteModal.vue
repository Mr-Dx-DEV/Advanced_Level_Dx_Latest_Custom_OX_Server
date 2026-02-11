<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { useBankStore } from '@/stores/bank'
import { ref } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched, resource } from '@/utils'
import { useLocaleStore } from '@/stores/locale'

const locale = useLocaleStore()
const bank = useBankStore()

const props = defineProps<{
  id?: number | undefined
  iban?: string
  balance?: number
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
    responseError.value = ''
  }
}

const validationSchema = toFormValidator(
  zod.object({
    iban: zod
      .string({
        invalid_type_error: locale.get('iban_must_be_a_string'),
        required_error: locale.get('iban_is_required')
      })
      .min(1)
      .refine((value) => value === props.iban!, locale.get('iban_do_not_match'))
  })
)

const { handleSubmit } = useForm({
  validationSchema
})

const { value: ibanModel, errorMessage: ibanError } = useField('iban')

const deleteHandle = handleSubmit(async () => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      const response = await fetched(`https://${resource()}/deleteAccount`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          id: props.id
        })
      })

      const data = await response.json()

      isDoingAction.value = false

      if (!data) {
        responseError.value = locale.get('delete_failed_please_try_again')
        return
      }

      bank.accountData = null
      bank.transactions = null

      closeModal()
    } catch (e) {
      responseError.value = locale.get('delete_failed_please_try_again')
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
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('delete_account_title') }}</h1>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('delete_account_description') }}
      <span class="font-semibold text-red-400">{{ iban }}</span>
    </p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="deleteHandle()">
      <div>
        <label for="account_number" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('delete_account_input_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="ibanModel"
            type="text"
            name="account_number"
            id="account_number"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            placeholder="1000"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="ibanError">
          {{ ibanError }}
        </p>
        <p class="mt-2 text-sm text-gray-500">
          {{ locale.get('delete_account_in_account_currently_there_is') }}
          <span class="font-semibold text-green-600">
            {{
              balance
                ? balance.toLocaleString(locale.get('currency_language'), {
                    style: 'currency',
                    currency: locale.get('currency')
                  })
                : '$0'
            }} </span
          >. {{ locale.get('delete_account_this_money_will_be_lost') }}
        </p>
      </div>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div class="flex flex-col gap-2">
        <p class="mt-1 text-sm text-red-400" v-if="responseError">
          {{ responseError }}
        </p>
        <button
          type="submit"
          class="text-gray-400 hover:text-white border border-[#373A40] hover:border-gray-200 flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('delete_account_confirm_removal_button') }}
        </button>
        <button
          type="button"
          class="flex w-full justify-center rounded-md bg-[#f25962] hover:bg-[#fab8bc] hover:text-gray-900 text-white py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
          @click.prevent="() => closeModal()"
        >
          {{ locale.get('delete_account_cancel_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
