<script setup lang="ts">
import { useLocaleStore } from '@/stores/locale'
import { useBankStore } from '@/stores/bank'
import { type Tab, useLoansManagementStore } from '@/stores/loans-management'
import RequestsLoansManagementComponent from '@/components/loans-management/RequestsLoansManagementComponent.vue'
import ActiveLoansManagementComponent from '@/components/loans-management/ActiveLoansManagementComponent.vue'
import PaidOffLoansManagementComponent from '@/components/loans-management/PaidOffLoansManagementComponent.vue'
import OtherLoansManagementComponent from '@/components/loans-management/OtherLoansManagementComponent.vue'

const locale = useLocaleStore()
const bank = useBankStore()
// const loans = useLoansStore()
const loansManagement = useLoansManagementStore()

const tabComponents: Record<Tab, any> = {
  requests: RequestsLoansManagementComponent,
  active: ActiveLoansManagementComponent,
  paid_off: PaidOffLoansManagementComponent,
  other: OtherLoansManagementComponent
}
</script>
<template>
  <div
    class="absolute inset-0 bg-primary z-50 border-t border-[#373A40] py-5 pb-5 flex flex-col gap-5"
  >
    <div class="sm:flex items-center justify-between">
      <div class="inline-flex rounded-md shadow-sm">
        <button
          type="button"
          class="relative inline-flex items-center rounded-l-md px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loansManagement.tab === 'requests'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loansManagement.changeTab('requests')"
        >
          {{ locale.get('management_requests_tab') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loansManagement.tab === 'active'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loansManagement.changeTab('active')"
        >
          {{ locale.get('management_active_tab') }}
        </button>
        <button
          type="button"
          class="relative inline-flex items-center px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loansManagement.tab === 'paid_off'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loansManagement.changeTab('paid_off')"
        >
          {{ locale.get('management_paid_off_tab') }}
        </button>

        <button
          type="button"
          class="relative inline-flex items-center rounded-r-md px-3 py-2 text-sm font-semibold focus:z-10"
          :class="[
            loansManagement.tab === 'other'
              ? [...bank.currentTheme.labels]
              : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
          ]"
          @click.prevent="loansManagement.changeTab('other')"
        >
          {{ locale.get('management_other_tab') }}
        </button>
      </div>
      <div class="flex gap-3">
        <button
          type="button"
          class="relative inline-flex items-center rounded-md bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
          @click.prevent="loansManagement.close()"
        >
          {{ locale.get('close') }}
        </button>
      </div>
    </div>
    <div class="overflow-x-auto flex-1">
      <Transition name="slide-fade" mode="out-in">
        <Component :is="tabComponents[loansManagement.tab]" class="mt-5" />
      </Transition>
    </div>
  </div>
</template>
