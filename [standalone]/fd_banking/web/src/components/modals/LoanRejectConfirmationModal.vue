<script setup lang="ts">
import { useLocaleStore } from '@/stores/locale'
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { onMounted } from 'vue'

const locale = useLocaleStore()
const bank = useBankStore()

const props = defineProps<{
  id?: any
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
  (e: 'confirm', id: any): void
}>()

onMounted(() => {
  if (!props.id) {
    emit('closeModal')
  }
})
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    class="flex justify-center items-center"
    content-class="flex flex-col max-w-md w-full p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">
        {{ locale.get('reject_confirmation_title') }}
      </h1>
      <a href="#" @click.prevent="emit('closeModal')">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>

    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>

    <p class="font-semibold text-lg text-white">
      {{ locale.get('loan_reject_confirmation') }}
    </p>

    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <div>
      <button
        type="submit"
        @click.prevent="emit('confirm', id)"
        :class="[...bank.currentTheme.button]"
        class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
      >
        {{ locale.get('confirm') }}
      </button>
    </div>
  </VueFinalModal>
</template>
