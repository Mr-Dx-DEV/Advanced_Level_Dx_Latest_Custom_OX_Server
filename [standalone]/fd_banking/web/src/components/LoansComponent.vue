<script setup lang="ts">
import { useLocaleStore } from '@/stores/locale'
import { useBankStore } from '@/stores/bank'
import { type Tab, useLoansStore } from '@/stores/loans'
import { useModal } from 'vue-final-modal'
import NewLoanRequestModal from './modals/NewLoanRequestModal.vue'
import ActiveLoansComponent from '@/components/loans/ActiveLoansComponent.vue'
import PaidOffLoansComponent from '@/components/loans/PaidOffLoansComponent.vue'
import PendingRequestLoansComponent from '@/components/loans/PendingRequestLoansComponent.vue'
import OtherLoansComponent from '@/components/loans/OtherLoansComponent.vue'
import { ref } from 'vue'

const locale = useLocaleStore()
const bank = useBankStore()
const loans = useLoansStore()

const tabComponents: Record<Tab, any> = {
  active: ActiveLoansComponent,
  paid_off: PaidOffLoansComponent,
  requests: PendingRequestLoansComponent,
  other: OtherLoansComponent
}

const circumference = ref<number>(50 * 2 * Math.PI)

const { open: openNewLoanModal, close: closeNewLoan } = useModal({
  component: NewLoanRequestModal,
  attrs: {
    onCloseModal() {
      closeNewLoan()
    }
  }
})
</script>
<template>
  <div
    class="absolute inset-0 bg-primary z-50 border-t border-[#373A40] py-5 pb-5 flex flex-col gap-5"
  >
    <div class="flex justify-between py-7 px-5 border border-[#373A40] rounded-2xl">
      <div
        class="flex items-center justify-between flex-wrap w-full max-w-sm px-10 border border-[#373A40] shadow-xl rounded-2xl"
      >
        <div
          class="flex items-center justify-center -m-6 overflow-hidden bg-primary border border-[#373A40] rounded-full"
        >
          <svg class="w-32 h-32 transform translate-x-1 translate-y-1" x-cloak aria-hidden="true">
            <circle
              class="text-gray-500"
              stroke-width="10"
              stroke="currentColor"
              fill="transparent"
              r="50"
              cx="60"
              cy="60"
            />
            <circle
              :class="loans.scoreColor"
              stroke-width="10"
              :stroke-dasharray="circumference"
              :stroke-dashoffset="circumference - (loans.scorePercentage / 100) * circumference"
              stroke-linecap="round"
              stroke="currentColor"
              fill="transparent"
              transform="rotate(-90 60 60)"
              r="50"
              cx="60"
              cy="60"
            />
          </svg>
          <span class="absolute text-2xl text-gray-200"> {{ loans.score }} </span>
        </div>
        <span class="text-xl font-medium text-gray-200">Your credit score</span>
      </div>
      <div class="flex gap-5">
        <div class="flex flex-col items-end border border-[#373A40] p-4 rounded-2xl">
          <p class="text-xl font-semibold text-gray-300">Active Loans</p>
          <p class="text-2xl font-bold text-gray-100">0</p>
        </div>
        <div class="flex flex-col items-end border border-[#373A40] p-4 rounded-2xl">
          <p class="text-xl font-semibold text-gray-300">Total debt</p>
          <p class="text-2xl font-bold text-gray-100">$ 0</p>
        </div>
      </div>
    </div>
    <div class="sm:flex items-center justify-between">
      <div class="inline-flex rounded-md shadow-sm">
        <button
          type="button"
          class="relative inline-flex items-center rounded-l-md px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loans.tab === 'active'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loans.changeTab('active')"
        >
          {{ locale.get('active') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loans.tab === 'paid_off'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loans.changeTab('paid_off')"
        >
          {{ locale.get('paid_off') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loans.tab === 'requests'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loans.changeTab('requests')"
        >
          {{ locale.get('pending_request') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center rounded-r-md px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loans.tab === 'other'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loans.changeTab('other')"
        >
          {{ locale.get('other') }}
        </button>
      </div>
      <div class="flex gap-3">
        <button
          type="button"
          class="relative inline-flex items-center rounded-md bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-green-300 focus:z-10"
          @click.prevent="openNewLoanModal()"
        >
          {{ locale.get('request_new_loan') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center rounded-md bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
          @click.prevent="loans.close()"
        >
          {{ locale.get('close') }}
        </button>
      </div>
    </div>
    <div class="overflow-x-auto flex-1">
      <Transition name="slide-fade" mode="out-in">
        <Component :is="tabComponents[loans.tab]" class="mt-5" />
      </Transition>
    </div>
  </div>
</template>
