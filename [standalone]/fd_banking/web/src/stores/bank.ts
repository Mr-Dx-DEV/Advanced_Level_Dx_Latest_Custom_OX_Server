import { useLocaleStore } from './locale'
import { EventBus } from '@/event-bus'
import { defineStore } from 'pinia'
import { DateTime } from 'luxon'
import { computed, ref } from 'vue'
import { fetched, resource } from '@/utils'

export type ColorState = {
  overall: string[]
  button: string[]
  svgColor: string
  labels: string[]
}

export type ThemeType = {
  logo: string
  overall: string[]
  button: string[]
  svgColor: string
  labels: string[]
}

export type Account = {
  id: number
  name: string | null
  type: string
  iban: string
  balance: number
  can_deposit?: number
  can_withdraw?: number
  can_transfer?: number
  can_export?: number
  can_control_members?: number
  is_owner?: number
  is_frozen?: number
  is_society?: number
}

export interface Transaction {
  id: number
  account_id: number
  action: string
  done_by: string
  amount: number
  from_account: number
  to_account: number
  description: string
  created_at: string
}

const fakeAccounts: Array<Account> = [
  {
    id: 1,
    name: 'Maze Bank',
    type: 'business',
    iban: '123456',
    balance: 1000000,
    can_deposit: 1,
    can_withdraw: 1,
    can_transfer: 1,
    can_export: 1,
    can_control_members: 1,
    is_owner: 1,
    is_frozen: 0
  }
]

export type AvailableThemes = 'fleeca' | 'maze' | 'lombank'

export const useBankStore = defineStore('bank', () => {
  const useUTC = ref<boolean>(true)
  const locale = useLocaleStore()
  const timeZone = ref<string>(Intl.DateTimeFormat().resolvedOptions().timeZone)
  const cash = ref<number>(0)
  const isFetching = ref<boolean>(false)
  const accounts = ref<Array<Account>>(process.env.NODE_ENV === 'development' ? fakeAccounts : [])
  const accountData = ref<Account | null>(
    process.env.NODE_ENV === 'development' ? fakeAccounts[0] : null
  )
  const transactions = ref<Array<Transaction> | null>()
  const search = ref<string>('')
  const isBankOpen = ref<boolean>(process.env.NODE_ENV === 'development' ? true : false)
  const isBankAtmOpen = ref<boolean>(false)
  const isLoading = ref<boolean>(process.env.NODE_ENV === 'development' ? false : true)
  const theme = ref<AvailableThemes>('fleeca')
  const logos = ref<Record<AvailableThemes, any>>({
    maze: '/web/dist/logos/maze_bank.png',
    fleeca: '/web/dist/logos/fleeca.png',
    lombank: '/web/dist/logos/lombank.png'
  })
  const page = ref<number>(1)

  const colors = ref<Record<AvailableThemes, ColorState>>({
    fleeca: {
      overall: ['bg-[#e5ede8]', 'bg-[#85b899]', 'text-gray-900'],
      button: ['bg-[#85b899]', 'hover:bg-[#e5ede8] hover:text-gray-900', 'text-white'],
      svgColor: '#85b899',
      labels: ['bg-[#85b899]', 'text-gray-700']
    },
    maze: {
      overall: ['bg-[#fab8bc]', 'bg-[#f25962]', 'text-gray-900'],
      button: ['bg-[#f25962]', 'hover:bg-[#fab8bc] hover:text-gray-900', 'text-white'],
      svgColor: '#f25962',
      labels: ['bg-[#f25962]', 'text-gray-700']
    },
    lombank: {
      overall: ['bg-[#b8cfff]', 'bg-[#4a7ac2]', 'text-gray-900'],
      button: ['bg-[#4a7ac2]', 'hover:bg-[#b8cfff] hover:text-gray-900', 'text-white'],
      svgColor: '#f25962',
      labels: ['bg-[#4a7ac2]', 'text-gray-700']
    }
  })

  const personalAccountBalance = computed<number>(() => {
    return accounts.value.find((account) => account.type === 'personal')?.balance ?? 0
  })

  const currentTheme = computed<ThemeType>(() => {
    return {
      logo: logos.value[theme.value],
      overall: colors.value[theme.value].overall,
      button: colors.value[theme.value].button,
      svgColor: colors.value[theme.value].svgColor,
      labels: colors.value[theme.value].labels
    }
  })

  const filteredAccounts = computed<Array<Account>>(() => {
    return accounts.value.filter((account) => {
      if (search.value === '') return true

      return account.name?.toLowerCase().includes(search.value.toLowerCase()) ?? false
    })
  })

  const overallAccountsSum = computed<number>(() => {
    return accounts.value.reduce((acc, curr) => {
      return acc + curr.balance
    }, 0)
  })

  const isPersonal = computed<boolean>(() => {
    if (!accountData.value) return false

    return accountData.value.type === 'personal'
  })

  const isOwner = computed<boolean>(() => {
    if (!accountData.value) return false

    return accountData.value.is_owner == 1
  })

  const isFrozen = computed<boolean>(() => {
    if (!accountData.value) return false

    return accountData.value.is_frozen == 1
  })

  const isSociety = computed<boolean>(() => {
    if (!accountData.value) return false

    return accountData.value.is_society == 1
  })

  const canDeposit = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return true

    if (isOwner.value) return true

    if (accountData.value.can_deposit == 1) return true

    return false
  })

  const canWithdraw = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return true

    if (isOwner.value) return true

    if (accountData.value.can_withdraw == 1) return true

    return false
  })

  const canWithdrawFromGivenAccount = (accountData: Account) => {
    if (!accountData) return false

    if (accountData.is_frozen) return false

    if (accountData.type === 'personal') return true

    if (accountData.is_owner === 1) return true

    if (accountData.can_withdraw == 1) return true

    return false
  }

  const canTransfer = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return true

    if (isOwner.value) return true

    if (accountData.value.can_transfer == 1) return true

    return false
  })

  const canExport = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return true

    if (isOwner.value) return true

    if (accountData.value.can_export == 1) return true

    return false
  })

  const canControlMembers = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return false

    if (isOwner.value) return true

    if (accountData.value.can_control_members == 1) return true

    return false
  })

  const canDelete = computed<boolean>(() => {
    if (!accountData.value) return false

    if (isSociety.value) return false

    if (isFrozen.value) return false

    if (isPersonal.value) return false

    if (isOwner.value) return true

    return false
  })

  const fetchAccount = async (id: number, override?: boolean) => {
    if (!isFetching.value && (accountData.value?.id !== id || override)) {
      isFetching.value = true

      // Reset data
      accountData.value = null
      transactions.value = null
      page.value = 1

      try {
        const response = await fetched(`https://${resource()}/loadAccount`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            id
          })
        })

        const data = await response.json()

        isFetching.value = false

        if (!data) {
          return
        }
      } catch (e) {
        isFetching.value = false
      }
    }
  }

  const fetchAccounts = async () => {
    try {
      fetch(`https://${resource()}/fetchAccounts`, {
        method: 'POST'
      })
    } catch (e) {
      console.log('Fetch accounts')
      console.error(e)
    }
  }

  const fetchCash = async () => {
    try {
      const response = await fetched(`https://${resource()}/fetchCash`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        }
      })

      const data = await response.json()

      isFetching.value = false

      if (!data) {
        return
      }
    } catch (e) {
      isFetching.value = false
    }
  }

  const transactionsLoading = async ($state: any) => {
    try {
      const response = await fetched(`https://${resource()}/transactions`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20,
          id: accountData.value!.id
        })
      })

      const json: Array<Transaction> = await response.json()

      if (json.length < 20) {
        transactions.value!.push(...json)
        $state.complete()
      } else {
        transactions.value!.push(...json)
        $state.loaded()
      }

      page.value++
    } catch (error) {
      $state.error()
    }
  }

  const getRelativeDate = (date: string) => {
    if (!useUTC.value) {
      return DateTime.fromISO(date).setLocale(locale.get('calendar_language')).toRelative()
    }

    return DateTime.fromISO(date, {
      zone: 'UTC'
    })
      .setLocale(locale.get('calendar_language'))
      .setZone(timeZone.value)
      .toRelative()
  }

  const formatTransactionTitle = (transaction: Transaction) => {
    if (transaction.action === 'deposit') {
      return locale.get('deposited_to_account_title')
    }

    if (transaction.action === 'withdraw') {
      return locale.get('withdrawn_from_account_title')
    }

    if (transaction.action === 'transferin') {
      return locale
        .get('transfered_to_account_title')
        .format(
          [0, 1].includes(transaction.from_account)
            ? locale.get('unknown_source')
            : transaction.from_account
        )
    }

    if (transaction.action === 'transferout') {
      return locale
        .get('transfered_from_account_title')
        .format(
          [0, 1].includes(transaction.to_account)
            ? locale.get('unknown_source')
            : transaction.to_account
        )
    }

    if (transaction.action === 'payment') {
      return locale
        .get('payment_for_invoice')
        .format(
          [0, 1].includes(transaction.to_account)
            ? locale.get('unknown_source')
            : transaction.to_account
        )
    }

    return locale.get('unknown')
  }

  return {
    useUTC,
    cash,
    theme,
    search,
    accounts,
    isLoading,
    fetchCash,
    canExport,
    canDelete,
    canDeposit,
    isBankOpen,
    canWithdraw,
    accountData,
    timeZone,
    canTransfer,
    currentTheme,
    fetchAccount,
    transactions,
    isBankAtmOpen,
    fetchAccounts,
    getRelativeDate,
    filteredAccounts,
    canControlMembers,
    overallAccountsSum,
    transactionsLoading,
    formatTransactionTitle,
    personalAccountBalance,
    canWithdrawFromGivenAccount
  }
})

EventBus.on('bank:open', () => {
  const bank = useBankStore()

  if (bank.isBankAtmOpen) {
    bank.isBankAtmOpen = false
  }

  bank.isBankOpen = true
  EventBus.emit('bank:opened')
})

EventBus.on('bank:close', () => {
  const bank = useBankStore()

  bank.isBankOpen = false

  if (bank.accountData) {
    bank.accounts = []
    bank.accountData = null
    bank.transactions = null
  }
})

EventBus.on('atm:open', () => {
  const bank = useBankStore()

  if (bank.isBankOpen) {
    bank.isBankOpen = false
  }

  bank.isBankAtmOpen = true
})

EventBus.on('atm:close', () => {
  const bank = useBankStore()

  bank.isBankAtmOpen = false

  if (bank.accountData) {
    bank.accounts = []
    bank.accountData = null
    bank.transactions = null
  }
})

EventBus.on('bank:setAccounts', (data: any) => {
  const bank = useBankStore()

  bank.accounts =
    data.accounts.sort((a: any) => {
      if (a.type === 'personal') return -1

      return 0
    }) ?? []

  bank.isLoading = false
})

EventBus.on('bank:setAccount', (data: any) => {
  const bank = useBankStore()

  bank.accountData = data.account
  bank.transactions = []

  bank.isLoading = false
})

EventBus.on('bank:fleecaTheme', () => {
  const bank = useBankStore()

  bank.theme = 'fleeca'
})

EventBus.on('bank:mazeTheme', () => {
  const bank = useBankStore()

  bank.theme = 'maze'
})

EventBus.on('bank:lombankTheme', () => {
  const bank = useBankStore()

  bank.theme = 'lombank'
})

EventBus.on('bank:setCash', (data: any) => {
  const bank = useBankStore()

  bank.cash = data.amount
})

EventBus.on('bank:accountUpdated', (data: any) => {
  const bank = useBankStore()

  if (bank.isBankOpen) {
    bank.fetchAccounts()

    if (bank.accountData?.id === data.accountId) {
      EventBus.emit('closeAllModals')

      bank.fetchAccount(data.accountId, true)
    }
  }
})

EventBus.on('bank:accountDeleted', (data: any) => {
  const bank = useBankStore()

  if (bank.isBankOpen) {
    const account = bank.accounts.find((a) => a.id === data.accountId)

    if (account) {
      bank.fetchAccounts()
    }

    EventBus.emit('closeAllModals')

    if (bank.accountData?.id === data.accountId) {
      EventBus.emit('closeAllModals')

      bank.accountData = null
      bank.transactions = null
    }
  }
})

EventBus.on('bank:accountPermissionsUpdated', (data: any) => {
  const bank = useBankStore()

  if (bank.isBankOpen) {
    if (bank.accountData?.id === data.accountId) {
      bank.fetchAccount(data.accountId, true)
    }
  }
})

EventBus.on('bank:useUTCToggle', (data: any) => {
  const bank = useBankStore()

  bank.useUTC = data.useUTC as unknown as boolean
})
