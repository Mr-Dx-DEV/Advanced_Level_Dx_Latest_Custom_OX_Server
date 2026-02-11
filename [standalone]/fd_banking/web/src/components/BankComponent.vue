<script setup lang="ts">
import { computed, onMounted, onUnmounted } from 'vue'
import { Menu, MenuButton, MenuItem, MenuItems } from '@headlessui/vue'
import { ChevronDownIcon } from '@heroicons/vue/20/solid'
// @ts-ignore
import InfiniteLoading from 'v3-infinite-loading'
import 'v3-infinite-loading/lib/style.css'

import { useBankStore } from '@/stores/bank'
import { resource } from '@/utils'

import { useModal } from 'vue-final-modal'
import DepositModal from '@/components/modals/DepositModal.vue'
import CreateAccountModal from '@/components/modals/CreateAccount.vue'
import WithdrawModal from '@/components/modals/WithdrawModal.vue'
import TransferModal from '@/components/modals/TransferModal.vue'
import ExportModal from '@/components/modals/ExportModal.vue'
import DeleteModal from '@/components/modals/DeleteModal.vue'
import MembersModal from '@/components/modals/MembersModal.vue'
import InvoicesComponent from '@/components/InvoicesComponent.vue'
import { useLocaleStore } from '@/stores/locale'
import { EventBus } from '@/event-bus'
import { useInvoicesStore } from '@/stores/invoices'
import LoansComponent from '@/components/LoansComponent.vue'
import { useLoansStore } from '@/stores/loans'
import { useLoansManagementStore } from '@/stores/loans-management'
import LoansManagementComponent from '@/components/LoansManagementComponent.vue'

const bank = useBankStore()
const locale = useLocaleStore()
const invoices = useInvoicesStore()
const loans = useLoansStore()
const loansManagement = useLoansManagementStore()

const logo = computed(() => bank.currentTheme.logo)
const light = computed(() => bank.currentTheme.overall[0])
const dark = computed(() => bank.currentTheme.overall[1])
const text = computed(() => bank.currentTheme.overall[2])

const { open: openCreateAccount, close: closeCreateAccount } = useModal({
  component: CreateAccountModal,
  attrs: {
    onCloseModal() {
      closeCreateAccount()
    }
  }
})

const {
  open: openDepositModal,
  close: closeDeposit,
  patchOptions: patchDepositOptions
} = useModal({
  component: DepositModal,
  attrs: {
    onCloseModal() {
      closeDeposit()
    }
  }
})

const openDeposit = () => {
  if (!bank.canDeposit) return

  patchDepositOptions({
    attrs: {
      id: bank.accountData?.id,
      name:
        bank.accountData?.type === 'personal'
          ? locale.get('personal')
          : bank.accountData?.name ?? locale.get('unknown')
    }
  })

  openDepositModal()
}

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

const openWithdraw = () => {
  if (!bank.canWithdraw) return

  patchWithdrawOptions({
    attrs: {
      id: bank.accountData?.id,
      name:
        bank.accountData?.type === 'personal'
          ? locale.get('personal')
          : bank.accountData?.name ?? locale.get('unknown'),
      balance: bank.accountData?.balance
    }
  })

  openWithdrawModal()
}

const {
  open: openTransferModal,
  close: closeTransfer,
  patchOptions: patchTransferOptions
} = useModal({
  component: TransferModal,
  attrs: {
    onCloseModal() {
      closeTransfer()
    }
  }
})

const openTransfer = () => {
  if (!bank.canTransfer) return

  patchTransferOptions({
    attrs: {
      id: bank.accountData?.id,
      name:
        bank.accountData?.type === 'personal'
          ? locale.get('personal')
          : bank.accountData?.name ?? locale.get('unknown'),
      balance: bank.accountData?.balance
    }
  })

  openTransferModal()
}

const {
  open: openExportModal,
  close: closeExport,
  patchOptions: patchExportOptions
} = useModal({
  component: ExportModal,
  attrs: {
    onCloseModal() {
      closeExport()
    }
  }
})

const openExport = () => {
  if (!bank.canExport) return

  patchExportOptions({
    attrs: {
      id: bank.accountData?.id,
      name:
        bank.accountData?.type === 'personal'
          ? locale.get('personal')
          : bank.accountData?.name ?? locale.get('unknown')
    }
  })

  openExportModal()
}

const {
  open: openDeleteModal,
  close: closeDelete,
  patchOptions: patchDeleteOptions
} = useModal({
  component: DeleteModal,
  attrs: {
    onCloseModal() {
      closeDelete()
    }
  }
})

const openDelete = () => {
  if (!bank.canDelete) return

  patchDeleteOptions({
    attrs: {
      id: bank.accountData?.id,
      balance: bank.accountData?.balance,
      iban: bank.accountData?.iban
    }
  })

  openDeleteModal()
}

const {
  open: openMembersModal,
  close: closeMembers,
  patchOptions: patchMembersOptions
} = useModal({
  component: MembersModal,
  attrs: {
    onCloseModal() {
      closeMembers()
    }
  }
})

const openMembers = () => {
  if (!bank.canControlMembers) return

  patchMembersOptions({
    attrs: {
      id: bank.accountData?.id,
      name:
        bank.accountData?.type === 'personal'
          ? locale.get('personal')
          : bank.accountData?.name ?? locale.get('unknown')
    }
  })

  openMembersModal()
}

EventBus.on('closeAllModals', () => {
  closeCreateAccount()
  closeDeposit()
  closeWithdraw()
  closeTransfer()
  closeExport()
  closeDelete()
  closeMembers()
})

const close = () => {
  EventBus.emit('bank:close')

  try {
    fetch(`https://${resource()}/bankClosed`, {
      method: 'POST'
    })
  } catch (e) {
    console.log('Bank closed, BankComponent')
    console.error(e)
  }
}

const closeBank = (ev: KeyboardEvent) => {
  if (ev.key === 'Escape') {
    close()
  }
}

onMounted(() => {
  invoices.fetchUnpaidInvoicesCount()
  window.addEventListener('keyup', closeBank)
})

onUnmounted(() => {
  EventBus.off('closeAllModals')
  window.removeEventListener('keyup', closeBank)

  invoices.reset()
})
</script>
<template>
  <Transition name="slide-fade">
    <div
      class="bg-primary rounded-2xl flex flex-col overflow-hidden p-5 gap-5 w-full"
      v-if="bank.isBankOpen"
    >
      <div class="flex justify-between items-center select-none">
        <div class="h-10">
          <img class="h-full" :src="logo" alt="Bank logo" />
        </div>
        <div class="flex gap-4">
          <div class="relative" v-if="loansManagement.hasPermission('can_manage_loans')">
            <button
              @click.prevent="() => loansManagement.toggle()"
              class="border border-[#373A40] rounded-md px-3 py-1 text-gray-400 hover:border-gray-200 hover:text-gray-200"
            >
              {{ locale.get('manage_loans') }}
            </button>
          </div>
          <div class="relative" v-if="loans.isLoansEnabled">
            <button
              @click.prevent="() => loans.toggle()"
              class="border border-[#373A40] rounded-md px-3 py-1 text-gray-400 hover:border-gray-200 hover:text-gray-200"
            >
              {{ locale.get('loans') }}
            </button>
          </div>

          <div class="relative">
            <span
              v-if="invoices.unpaidInvoicesCount > 0"
              class="absolute top-0 right-0 block h-2.5 w-2.5 rounded-full bg-red-400 ring-1 ring-white"
            />
            <button
              @click.prevent="() => invoices.toggle()"
              class="border border-[#373A40] rounded-md px-3 py-1 text-gray-400 hover:border-gray-200 hover:text-gray-200"
            >
              {{ locale.get('invoices') }}
            </button>
          </div>

          <button
            @click.prevent="() => close()"
            class="border border-[#373A40] rounded-md px-3 py-1 text-gray-400 hover:border-gray-200 hover:text-gray-200"
          >
            {{ locale.get('logout') }}
          </button>
        </div>
      </div>
      <div class="relative flex flex-1 overflow-hidden gap-5">
        <Transition name="slide-fade">
          <LoansManagementComponent v-if="loansManagement.isLoansManageOpen" />
        </Transition>
        <Transition name="slide-fade">
          <LoansComponent v-if="loans.isLoansOpen" />
        </Transition>
        <Transition name="slide-fade">
          <InvoicesComponent v-if="invoices.isInvoicesOpen" />
        </Transition>
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
                    <a
                      href="#"
                      @click.prevent="() => openCreateAccount()"
                      class="flex items-center justify-center w-8 h-8 rounded-full bg-primaryAccent hover:bg-gray-600 transition ease-linear duration-200 group"
                    >
                      <span
                        class="fa-solid fa-plus text-gray-400 group-hover:text-white transition ease-linear duration-200"
                      ></span>
                      <ToolTip :text="locale.get('add_new_account')" />
                    </a>
                  </div>
                </div>
                <div
                  class="flex flex-col gap-5 overflow-y-auto overflow-x-hidden flex-1 select-none py-2"
                >
                  <div
                    class="flex flex-col rounded-2xl overflow-hidden flex-shrink-0 transform hover:-translate-y-1 transition duration-350 ease-linear"
                    v-for="(account, index) in bank.filteredAccounts"
                    @click.prevent="() => bank.fetchAccount(account.id)"
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
        <div
          class="flex flex-col flex-shrink-0 border border-[#373A40] flex-1 rounded-2xl p-5 overflow-hidden"
        >
          <div
            class="flex flex-col flex-1 text-white justify-center items-center gap-5"
            v-if="!bank.accountData"
          >
            <div class="lds-ring">
              <div></div>
              <div></div>
              <div></div>
              <div></div>
            </div>
            <p class="text-gray-400 text-lg">
              {{ locale.get('if_you_havent_please_select_account_on_the_left') }}
            </p>
          </div>
          <div class="flex justify-between items-center" v-else>
            <div class="flex flex-col">
              <span class="text-xl tracking-wide font-semibold text-white">{{
                locale.get('transaction_history')
              }}</span>
              <div class="flex gap-2 text-gray-400">
                <span
                  >{{ locale.get('account') }}:
                  <span class="font-semibold">{{ bank.accountData.iban }}</span>
                </span>
                <span
                  >{{ locale.get('balance') }}:
                  <span class="font-semibold">{{
                    bank.accountData.balance.toLocaleString(locale.get('currency_language'), {
                      style: 'currency',
                      currency: locale.get('currency')
                    })
                  }}</span></span
                >
              </div>
            </div>
            <div class="inline-flex rounded-md shadow-sm">
              <button
                type="button"
                v-if="bank.canDeposit"
                @click.prevent="() => openDeposit()"
                class="relative inline-flex items-center rounded-l-md bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
              >
                {{ locale.get('deposit') }}
              </button>
              <button
                type="button"
                v-if="bank.canWithdraw"
                @click.prevent="() => openWithdraw()"
                class="relative inline-flex items-center bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
              >
                {{ locale.get('withdraw') }}
              </button>
              <button
                type="button"
                v-if="bank.canTransfer"
                @click.prevent="() => openTransfer()"
                class="relative inline-flex items-center bg-transparent px-3 py-2 text-sm font-semibold text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
              >
                {{ locale.get('transfer') }}
              </button>
              <Menu
                as="div"
                class="relative -ml-px block"
                v-if="bank.canControlMembers || bank.canExport || bank.canDelete"
              >
                <MenuButton
                  class="relative inline-flex items-center rounded-r-md bg-transparent px-2 py-2 text-gray-400 ring-1 ring-inset ring-[#373A40] hover:bg-[#373A40] hover:text-white focus:z-10"
                >
                  <ChevronDownIcon class="h-5 w-5" aria-hidden="true" />
                </MenuButton>
                <transition
                  enter-active-class="transition ease-out duration-100"
                  enter-from-class="transform opacity-0 scale-95"
                  enter-to-class="transform opacity-100 scale-100"
                  leave-active-class="transition ease-in duration-75"
                  leave-from-class="transform opacity-100 scale-100"
                  leave-to-class="transform opacity-0 scale-95"
                >
                  <MenuItems
                    class="absolute right-0 z-10 mt-2 -mr-1 w-56 origin-top-right rounded-md bg-primary shadow-lg ring-1 ring-[#373A40] focus:outline-none overflow-hidden"
                  >
                    <div class="py-1">
                      <MenuItem key="export" v-slot="{ active }" v-if="bank.canControlMembers">
                        <a
                          href="#"
                          :class="[
                            active ? 'bg-[#373A40] text-white' : 'text-gray-400',
                            'block px-4 py-2 text-sm'
                          ]"
                          @click.prevent="() => openMembers()"
                        >
                          {{ locale.get('members') }}
                        </a>
                      </MenuItem>
                      <MenuItem key="export" v-slot="{ active }" v-if="bank.canExport">
                        <a
                          href="#"
                          :class="[
                            active ? 'bg-[#373A40] text-white' : 'text-gray-400',
                            'block px-4 py-2 text-sm'
                          ]"
                          @click.prevent="() => openExport()"
                        >
                          {{ locale.get('export_transactions') }}
                        </a>
                      </MenuItem>
                      <MenuItem key="export" v-slot="{ active }" v-if="bank.canDelete">
                        <a
                          href="#"
                          :class="[
                            active ? 'bg-[#fab8bc] text-gray-900' : 'text-gray-200',
                            'block bg-[#f25962] px-4 py-2 text-sm'
                          ]"
                          @click.prevent="() => openDelete()"
                        >
                          {{ locale.get('delete_account') }}
                        </a>
                      </MenuItem>
                    </div>
                  </MenuItems>
                </transition>
              </Menu>
            </div>
          </div>
          <div class="flex-1 overflow-x-hidden overflow-y-auto" v-if="bank.transactions">
            <div class="overflow-hidden">
              <ul role="list" class="space-y-2">
                <li v-for="transaction in bank.transactions" :key="transaction.id">
                  <div class="block space-y-2 border border-[#373A40] bg-[#212227] rounded-2xl">
                    <div class="p-5">
                      <div class="flex items-center justify-between">
                        <p class="truncate text-lg font-medium text-white">
                          {{ bank.formatTransactionTitle(transaction) }}
                        </p>
                        <div class="ml-2 flex flex-shrink-0">
                          <p
                            class="inline-flex rounded-full px-2 text-xs font-semibold leading-5"
                            :class="[...bank.currentTheme.labels]"
                          >
                            {{
                              locale.get(`${transaction.action}_action`) ?? locale.get('unknown')
                            }}
                          </p>
                        </div>
                      </div>
                      <div class="mt-2 flex justify-between">
                        <div class="">
                          <p class="text-sm text-gray-400">
                            {{ locale.get('made_by') }}:
                            <span class="font-semibold">{{ transaction.done_by }}</span>
                          </p>
                          <p class="text-sm text-gray-400">
                            {{ bank.getRelativeDate(transaction.created_at) }}
                          </p>
                        </div>
                        <div class="font-bold text-xl text-white">
                          {{
                            transaction.amount.toLocaleString(locale.get('currency_language'), {
                              style: 'currency',
                              currency: locale.get('currency')
                            })
                          }}
                        </div>
                      </div>
                      <div class="w-full flex flex-col border-t border-gray-400 mt-2 pt-2">
                        <p class="text-gray-500 text-xs">{{ locale.get('message') }}</p>
                        <p class="text-gray-200">{{ transaction.description }}</p>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <InfiniteLoading
              class="flex items-center justify-center text-gray-500"
              @infinite="bank.transactionsLoading"
              :slots="{
                complete: locale.get('no_more_records'),
                error: locale.get('error_occurred')
              }"
            />
          </div>
        </div>
      </div>
    </div>
  </Transition>
</template>
