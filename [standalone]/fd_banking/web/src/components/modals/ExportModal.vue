<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { ref } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched, resource } from '@/utils'
import { EventBus } from '@/event-bus'
import { useLocaleStore } from '@/stores/locale'

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
const responseUrl = ref<string>('')

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
    responseError.value = ''
  }
}

const validationSchema = toFormValidator(
  zod.object({
    dates: zod.object({
      startDate: zod.coerce.date({
        invalid_type_error: locale.get('start_date_must_be_a_date'),
        required_error: locale.get('start_date_is_required')
      }),
      endDate: zod.coerce.date({
        invalid_type_error: locale.get('end_date_must_be_a_date'),
        required_error: locale.get('end_date_is_required')
      })
    })
  })
)

const { handleSubmit } = useForm({
  validationSchema
})

const formatter = ref({
  date: 'YYYY-MM-DD',
  month: 'MM'
})

const { value: dates } = useField('dates')
const { errorMessage: startDateError } = useField('dates.startDate')
const { errorMessage: endDateError } = useField('dates.endDate')

const exportHandle = handleSubmit(async (values) => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      EventBus.on('bank:exportAnswer', (data: any) => {
        EventBus.off('bank:exportAnswer')

        if (data.isSuccess) {
          responseUrl.value = data.url
          isDoingAction.value = false

          return
        }

        responseError.value = locale.get('exporting_failed_please_try_again')
        isDoingAction.value = false
      })

      const response = await fetched(`https://${resource()}/exportTransactions`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          dates: values.dates,
          id: props.id
        })
      })

      const data = await response.json()

      if (!data) {
        responseError.value = locale.get('exporting_failed_please_try_again')
        isDoingAction.value = false
        return
      }
    } catch (e) {
      EventBus.off('bank:exportAnswer')
      responseError.value = locale.get('exporting_failed_please_try_again')
      isDoingAction.value = false
    }
  }
})

const openUrl = (url: string) => {
  // @ts-ignore
  window.invokeNative('openUrl', url)
}
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    :clickToClose="!isDoingAction"
    :escToClose="!isDoingAction"
    class="flex justify-center items-center"
    content-class="flex flex-col p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('export_title') }}</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('export_description') }}<br /><br />
      {{ locale.get('current_account') }}
      <span class="font-semibold text-gray-300"> {{ name ?? locale.get('unknown') }} </span>.
    </p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="exportHandle()">
      <div>
        <vue-tailwind-datepicker
          :i18n="locale.get('calendar_language')"
          :shortcuts="false"
          no-input
          name="dates"
          :formatter="formatter"
          v-model="dates"
        />
      </div>
      <p class="mt-1 text-sm text-red-400" v-if="startDateError">
        {{ startDateError }}
      </p>
      <p class="mt-1 text-sm text-red-400" v-else-if="endDateError">
        {{ endDateError }}
      </p>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div>
        <p class="mt-1 text-sm text-red-400" v-if="responseError">
          {{ responseError }}
        </p>
        <p class="my-2 text-sm text-green-400" v-if="responseUrl">
          {{ locale.get('please_download_file') }}
          <a
            href="#"
            target="_blank"
            @click.prevent="() => openUrl(responseUrl)"
            class="text-gray-100 hover:underline"
          >
            {{ locale.get('export_here') }}
          </a>
        </p>
        <button
          type="submit"
          :class="[...bank.currentTheme.button, isDoingAction ? 'btn-loading' : '']"
          :disabled="isDoingAction"
          class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('export_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
