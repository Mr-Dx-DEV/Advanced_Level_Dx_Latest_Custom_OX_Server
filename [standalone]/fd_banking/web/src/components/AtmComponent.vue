<script setup lang="ts">
import { computed, onMounted, onUnmounted } from 'vue'
// @ts-ignore
import 'v3-infinite-loading/lib/style.css'

import { type Account, useBankStore } from '@/stores/bank'
import { resource } from '@/utils'

import { useModal } from 'vue-final-modal'
import WithdrawModal from '@/components/modals/WithdrawModal.vue'
import { useLocaleStore } from '@/stores/locale'
import { EventBus } from '@/event-bus'

const bank = useBankStore()
const locale = useLocaleStore()

const logo = computed(() => bank.currentTheme.logo)
const light = computed(() => bank.currentTheme.overall[0])
const dark = computed(() => bank.currentTheme.overall[1])
const text = computed(() => bank.currentTheme.overall[2])

const {
  open: openWithdrawModal,
  close: closeWithdraw,
  patchOptions: patchWithdrawOptions
} = useModal({
  component: WithdrawModal,
  attrs: {
    onCloseModal() {
      closeWithdraw()
    }
  }
})

const openWithdraw = (account: Account) => {
  if (!bank.canWithdrawFromGivenAccount(account)) return

  patchWithdrawOptions({
    attrs: {
      id: account.id,
      name:
        account.type === 'personal'
          ? locale.get('personal')
          : account.name ?? locale.get('unknown'),
      balance: account.balance,
      hideOverlay: true
    }
  })

  openWithdrawModal()
}

EventBus.on('closeAllModals', () => {
  closeWithdraw()
})

const close = () => {
  EventBus.emit('atm:close')

  try {
    fetch(`https://${resource()}/atmClosed`, {
      method: 'POST'
    })
  } catch (e) {
    console.log('atm closed')
    console.error(e)
  }
}

const closeAtm = (ev: KeyboardEvent) => {
  if (ev.key === 'Escape') {
    close()
  }
}

onMounted(() => {
  window.addEventListener('keyup', closeAtm)
})
onUnmounted(() => {
  EventBus.off('closeAllModals')

  window.removeEventListener('keyup', closeAtm)
})
</script>
<template>
  <Transition name="slide-fade">
    <div
      class="relative bg-primary rounded-2xl flex flex-col overflow-hidden p-5 gap-5"
      v-if="bank.isBankAtmOpen"
    >
      <div class="flex justify-between items-center select-none">
        <div class="h-10">
          <img class="h-full" :src="logo" alt="Bank logo" />
        </div>
        <div class="flex flex-col items-end">
          <p class="font-extrabold text-gray-200 text-3xl">{{ locale.get('atm') }}</p>
          <div class="text-gray-500 text-xs">{{ locale.get('withdrawal_only') }}</div>
        </div>
      </div>

      <div class="relative flex flex-1 overflow-hidden gap-5">
        <Transition name="slide-fade">
          <div
            v-if="bank.isLoading"
            class="absolute inset-0 bg-primary flex items-center justify-center z-50"
          >
            <div class="lds-ring">
              <div></div>
              <div></div>
              <div></div>
              <div></div>
            </div>
          </div>
        </Transition>
        <div class="flex min-w-[20rem] max-w-[20rem] gap-5">
          <div class="flex flex-col flex-1 w-full overflow-y-auto overflow-x-hidden">
            <div
              class="flex flex-col flex-1 border border-[#373A40] py-5 px-5 rounded-2xl gap-5 overflow-hidden"
            >
              <div class="flex flex-col w-full rounded-2xl overflow-hidden flex-shrink-0">
                <div
                  class="flex flex-col flex-1 justify-center items-center py-8 px-3 flex-shrink-0 text-white border rounded-2xl border-[#373A40]"
                >
                  <p class="text-2xl font-extrabold">
                    {{
                      bank.overallAccountsSum.toLocaleString(locale.get('currency_language'), {
                        style: 'currency',
                        currency: locale.get('currency')
                      })
                    }}
                  </p>
                  <p class="text-xs font-semibold tracking-tight text-gray-500">
                    {{ locale.get('total_account_balance') }}
                  </p>
                </div>
              </div>
              <div class="flex flex-col flex-1 overflow-hidden gap-1">
                <div class="flex w-full justify-between items-center">
                  <p class="text-gray-100 font-bold flex flex-1 flex-grow-0 gap-1 leading-none">
                    <span class="">{{ locale.get('accounts') }}</span>
                    <span
                      class="inline-flex items-center rounded-full bg-gray-400 px-3 leading-none text-xs text-gray-800"
                      >{{ bank.accounts.length }}</span
                    >
                  </p>
                  <div class="flex justify-end items-center gap-2">
                    <input
                      type="text"
                      name="fd_banking_search"
                      id="search"
                      v-model="bank.search"
                      class="block w-1/2 rounded-md border-0 py-1 px-1 bg-transparent text-sm text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:border-transparent focus:ring-0"
                      :placeholder="locale.get('search_label')"
                    />
                  </div>
                </div>
                <div
                  class="flex flex-col gap-5 overflow-y-auto overflow-x-hidden flex-1 select-none py-2"
                >
                  <div
                    class="flex flex-col rounded-2xl overflow-hidden flex-shrink-0 transform hover:-translate-y-1 transition duration-350 ease-linear"
                    v-for="(account, index) in bank.filteredAccounts"
                    @click.prevent="() => openWithdraw(account)"
                    :key="index"
                  >
                    <div class="flex flex-col justify-between p-3 gap-2" :class="[light, text]">
                      <div class="flex flex-col justify-between start">
                        <span class="block font-semibold truncate">{{
                          account.type === 'personal'
                            ? locale.get('personal_account_title')
                            : account.name ?? locale.get('unknown')
                        }}</span>
                        <span class="block text-xs font-normal truncate">
                          {{ locale.get('type') }}:
                          {{ locale.get(account.type) }}
                          <span class="text-red-400 ml-2">
                            {{ account.is_frozen ? locale.get('frozen') : '' }}
                          </span>
                        </span>
                      </div>
                      <div class="flex justify-between items-center">
                        <div class="">
                          <img src="@/assets/images/chip.png" alt="" class="h-12" />
                        </div>
                        <div class="flex justify-end gap-1 text-sm">
                          <span>{{ locale.get('iban') }}:</span>
                          <span class="font-bold tracking-wide">{{ account.iban }}</span>
                        </div>
                      </div>
                    </div>
                    <div class="flex justify-between items-center px-3 py-2" :class="[dark, text]">
                      <div class="font-semibold text-sm">{{ locale.get('balance') }}</div>
                      <div class="font-bold text-sm">
                        {{
                          account.balance.toLocaleString(locale.get('currency_language'), {
                            style: 'currency',
                            currency: locale.get('currency')
                          })
                        }}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </Transition>
</template>
