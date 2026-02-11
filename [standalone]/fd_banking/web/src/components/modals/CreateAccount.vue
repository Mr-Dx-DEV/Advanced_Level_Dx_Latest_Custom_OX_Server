<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { ref } from 'vue'
import { useForm, useField } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { z as zod } from 'zod'
import { resource, fetched } from '@/utils'
import { useLocaleStore } from '@/stores/locale'

const locale = useLocaleStore()

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const closeModal = () => {
  if (!isCreating.value) {
    emit('closeModal')
    name.value = ''
    responseError.value = ''
  }
}

const isCreating = ref<boolean>(false)
const responseError = ref<string>('')

const validationSchema = toFormValidator(
  zod.object({
    name: zod
      .string({
        invalid_type_error: locale.get('name_must_be_a_string'),
        required_error: locale.get('name_is_required')
      })
      .min(5, locale.get('minimum_name_length_5'))
      .max(50, locale.get('maximum_name_length_50'))
  })
)

const { handleSubmit } = useForm({
  validationSchema,
  initialValues: {
    name: ''
  }
})

const { value: name, errorMessage: nameError } = useField('name')

const createAccount = handleSubmit(async (values) => {
  if (!isCreating.value) {
    responseError.value = ''
    isCreating.value = true

    try {
      const response = await fetched(`https://${resource()}/createNewAccount`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          name: values.name
        })
      })

      const data = await response.json()

      isCreating.value = false

      if (!data) {
        responseError.value = locale.get('creation_failed_please_try_again')
        return
      }

      closeModal()
    } catch (e) {
      responseError.value = locale.get('creation_failed_please_try_again')
      isCreating.value = false
    }
  }
})

const bank = useBankStore()
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    :clickToClose="!isCreating"
    :escToClose="!isCreating"
    class="flex justify-center items-center"
    content-class="flex flex-col max-w-md w-full p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('create_account') }}</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">{{ locale.get('create_account_description') }}</p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="createAccount()">
      <div>
        <label for="name" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('creation_name_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="name"
            type="text"
            name="name"
            id="name"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            :placeholder="locale.get('creation_name_placeholder')"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="nameError">
          {{ nameError }}
        </p>
        <p class="mt-1 text-sm text-red-400" v-if="responseError">
          {{ responseError }}
        </p>
      </div>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div>
        <button
          type="submit"
          :class="[...bank.currentTheme.button, isCreating ? 'btn-loading' : '']"
          :disabled="isCreating"
          class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('creattion_button_label') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
