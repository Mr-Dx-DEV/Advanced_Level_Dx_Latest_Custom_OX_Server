<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { ref } from 'vue'
import { fetched, resource } from '@/utils'
import { EventBus } from '@/event-bus'
import { useLocaleStore } from '@/stores/locale'

const locale = useLocaleStore()

const props = defineProps<{
  id?: number | undefined
  citizen_id?: string
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
  (e: 'updateMembers'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
  }
}

const deleteMemberHandle = async () => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      EventBus.on('bank:deleteMemberAnswer', (data: any) => {
        EventBus.off('bank:deleteMemberAnswer')

        if (data.isSuccess) {
          isDoingAction.value = false
          emit('updateMembers')
          closeModal()

          return
        }

        responseError.value = 'Deleting member failed, please try again!'
        isDoingAction.value = false
      })

      const response = await fetched(`https://${resource()}/deleteNewMember`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          citizen_id: props.citizen_id,
          id: props.id
        })
      })

      const data = await response.json()

      if (!data) {
        responseError.value = 'Deleting member failed, please try again!'
        isDoingAction.value = false
        return
      }
    } catch (e) {
      EventBus.off('bank:deleteMemberAnswer')
      responseError.value = 'Deleting member failed, please try again!'
      isDoingAction.value = false
    }
  }
}
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
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('remove_member') }}</h1>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('remove_member_description') }}
      <span class="font-semibold text-red-400">{{ citizen_id }}</span>
    </p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="deleteMemberHandle()">
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
          {{ locale.get('remove_member_confirm_removal_button') }}
        </button>
        <button
          type="button"
          class="flex w-full justify-center rounded-md bg-[#f25962] hover:bg-[#fab8bc] hover:text-gray-900 text-white py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
          @click.prevent="() => closeModal()"
        >
          {{ locale.get('remove_member_cancel_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
