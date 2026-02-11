<script setup lang="ts">
import { ModalsContainer } from 'vue-final-modal'
import { useLocaleStore } from '@/stores/locale'
import Bank from './components/BankComponent.vue'
import Atm from './components/AtmComponent.vue'
import { onMounted } from 'vue'
import { useBankStore } from './stores/bank'
import { useLoansStore } from './stores/loans'
import { Settings } from 'luxon'

const locale = useLocaleStore()
const bank = useBankStore()
const loans = useLoansStore()

onMounted(() => {
  try {
    setTimeout(async () => {
      await locale.fetchLocale()

      Settings.defaultLocale = locale.get('calendar_language')

      loans.loansEnabled()
    }, 5 * 1000)
  } catch (e) {
    console.error(e)
  }
})
</script>

<template>
  <div
    id="bankingContainer"
    class="relative flex flex-1 justify-center max-w-screen-xl max-h-[75%] overflow-hidden rounded-2xl h-full"
  >
    <Transition name="slide-fade"><Bank v-if="bank.isBankOpen" /></Transition>
    <Transition name="slide-fade"><Atm v-if="bank.isBankAtmOpen" /></Transition>

    <ModalsContainer />
  </div>
</template>
