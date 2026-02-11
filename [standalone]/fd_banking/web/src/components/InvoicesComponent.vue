<script setup lang="ts">
import { useLocaleStore } from '@/stores/locale'
import { useBankStore } from '@/stores/bank'
import UnpaidInvoicesComponent from '@/components/invoices/UnpaidInvoicesComponent.vue'
import PaidInvoicesComponent from '@/components/invoices/PaidInvoicesComponent.vue'
import { useInvoicesStore } from '@/stores/invoices'

const tabComponents = {
  unpaid: UnpaidInvoicesComponent,
  paid: PaidInvoicesComponent
}

const locale = useLocaleStore()
const bank = useBankStore()
const invoices = useInvoicesStore()
</script>
<template>
  <div class="absolute inset-0 bg-primary z-50 border-t border-[#373A40] py-5 pb-5 flex flex-col">
    <div class="flex justify-between items-baseline">
      <span class="block text-gray-200 font-bold tracking-wide text-2xl">
        {{ locale.get('invoices') }}
      </span>
      <div class="flex gap-5">
        <div class="inline-flex rounded-md shadow-sm">
          <button
            type="button"
            class="relative inline-flex items-center rounded-l-md px-3 py-2 text-sm font-semibold focus:z-10"
            :class="[
              invoices.tab === 'unpaid'
                ? [...bank.currentTheme.labels]
                : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
            ]"
            @click.prevent="invoices.changeTab('unpaid')"
          >
            {{ locale.get('unpaid') }}
          </button>
          <button
            type="button"
            class="relative inline-flex items-center rounded-r-md px-3 py-2 text-sm font-semibold focus:z-10"
            :class="[
              invoices.tab === 'paid'
                ? [...bank.currentTheme.labels]
                : 'bg-transparent ring-[#373A40] hover:bg-[#373A40] text-gray-400 ring-1 ring-inset hover:text-white'
            ]"
            @click.prevent="invoices.changeTab('paid')"
          >
            {{ locale.get('paid') }}
          </button>
        </div>
        <button
          type="button"
          class="relative inline-flex items-center rounded-md bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
          @click.prevent="invoices.close()"
        >
          {{ locale.get('close') }}
        </button>
      </div>
    </div>
    <Transition name="slide-fade" mode="out-in">
      <Component :is="tabComponents[invoices.tab]" class="mt-5" />
    </Transition>
  </div>
</template>
