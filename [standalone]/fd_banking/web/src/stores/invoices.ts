import { fetched, resource } from '@/utils'
import { DateTime } from 'luxon'
import { defineStore } from 'pinia'
import { computed, ref } from 'vue'
import { useBankStore } from './bank'
import { useLocaleStore } from './locale'

export interface Invoice {
  id: number
  issued_by: string
  status: number
  description: string
  due_on: string
  created_at: string
  updated_at: string
  can_be_declined: boolean
  amount: number
}

type Tab = 'unpaid' | 'paid'

export const useInvoicesStore = defineStore('invoices', () => {
  const bank = useBankStore()
  const locale = useLocaleStore()

  const isInvoicesOpen = ref<boolean>(false)
  const isProcessing = ref<boolean>(false)

  const search = ref<string>('')

  const paidInvoices = ref<Invoice[]>([])
  const unpaidInvoices = ref<Invoice[]>([])

  const unpaidInvoicesCount = ref<number>(0)
  const unpaidInvoicesSum = ref<number>(0)
  const paidInvoicesSum = ref<number>(0)

  const filteredUnpaidInvoices = computed<Array<Invoice>>(() => {
    return unpaidInvoices.value.filter((invoice) => {
      if (search.value === '') return true

      return (
        (invoice.description?.toLowerCase().includes(search.value.toLowerCase()) ||
          invoice.issued_by?.toLowerCase().includes(search.value.toLowerCase())) ??
        false
      )
    })
  })

  const reset = () => {
    isInvoicesOpen.value = false
    page.value = 1
    tab.value = 'unpaid'
    paidInvoices.value = []
    unpaidInvoices.value = []
    unpaidInvoicesCount.value = 0
    unpaidInvoicesSum.value = 0
    paidInvoicesSum.value = 0
  }

  const payInvoice = async (id: number) => {
    if (isProcessing.value) return

    isProcessing.value = true

    try {
      const response = await fetched(`https://${resource()}/payInvoice`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const data: boolean = await response.json()

      if (data) {
        const index = unpaidInvoices.value!.findIndex((invoice) => invoice.id === id)

        if (index !== -1) {
          unpaidInvoices.value!.splice(index, 1)
        }
      }

      isProcessing.value = false
    } catch (error) {
      console.error(error)
      isProcessing.value = false
    }
  }

  const declineInvoice = async (id: number) => {
    if (isProcessing.value) return

    isProcessing.value = true

    try {
      const response = await fetched(`https://${resource()}/declineInvoice`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const data: boolean = await response.json()

      if (data) {
        const index = unpaidInvoices.value!.findIndex((invoice) => invoice.id === id)

        if (index !== -1) {
          unpaidInvoices.value!.splice(index, 1)
        }
      }

      isProcessing.value = false
    } catch (error) {
      console.error(error)
      isProcessing.value = false
    }
  }

  const payAllInvoices = async () => {
    if (isProcessing.value) return

    isProcessing.value = true

    try {
      const response = await fetched(`https://${resource()}/payAllInvoices`, {
        method: 'POST'
      })

      const data: boolean = await response.json()

      if (data) {
        unpaidInvoices.value = []
      }

      isProcessing.value = false
    } catch (error) {
      console.error(error)
      isProcessing.value = false
    }
  }

  const fetchUnpaidInvoicesSum = async () => {
    try {
      const response = await fetched(`https://${resource()}/unpaidInvoicesSum`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20
        })
      })

      const sum: number = await response.json()

      unpaidInvoicesSum.value = sum
    } catch (error) {
      unpaidInvoicesSum.value = 0
    }
  }

  const fetchUnpaidInvoicesCount = async () => {
    try {
      const response = await fetched(`https://${resource()}/unpaidInvoicesCount`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20
        })
      })

      const sum: number = await response.json()

      unpaidInvoicesCount.value = sum
    } catch (error) {
      unpaidInvoicesCount.value = 0
    }
  }

  const fetchPaidInvoicesSum = async () => {
    try {
      const response = await fetched(`https://${resource()}/paidInvoicesSum`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20
        })
      })

      const sum: number = await response.json()

      paidInvoicesSum.value = sum
    } catch (error) {
      paidInvoicesSum.value = 0
    }
  }

  const page = ref<number>(1)
  const tab = ref<Tab>('unpaid')
  const changeTab = (newTab: Tab) => {
    page.value = 1

    if (tab.value === 'paid') {
      paidInvoices.value = []
    } else {
      unpaidInvoices.value = []
    }

    tab.value = newTab
  }

  const open = () => (isInvoicesOpen.value = true)
  const close = () => {
    reset()
  }
  const toggle = () => (isInvoicesOpen.value = !isInvoicesOpen.value)

  const unpaidInvoicesLoading = async ($state: any) => {
    try {
      const response = await fetched(`https://${resource()}/unpaidInvoices`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20
        })
      })

      const json: Array<Invoice> = await response.json()

      if (json.length < 20) {
        unpaidInvoices.value!.push(...json)
        $state.complete()
      } else {
        unpaidInvoices.value!.push(...json)
        $state.loaded()
      }

      page.value++
    } catch (error) {
      $state.error()
    }
  }

  const paidInvoicesLoading = async ($state: any) => {
    try {
      const response = await fetched(`https://${resource()}/paidInvoices`, {
        method: 'POST',
        body: JSON.stringify({
          page: page.value,
          limit: 20
        })
      })

      const json: Array<Invoice> = await response.json()

      if (json.length < 20) {
        paidInvoices.value!.push(...json)
        $state.complete()
      } else {
        paidInvoices.value!.push(...json)
        $state.loaded()
      }

      page.value++
    } catch (error) {
      $state.error()
    }
  }

  const getProperDate = computed(() => (date: string) => {
    if (!date) return locale.get('no_due_date')

    if (bank.useUTC) {
      return DateTime.fromISO(date).setLocale(locale.get('calendar_language')).toFormat('yyyy-MM-dd HH:mm')
    }

    return DateTime.fromISO(date, {
      zone: 'UTC'
    })
    .setLocale(locale.get('calendar_language'))
      .setZone(bank.timeZone)
      .toFormat('yyyy-MM-dd HH:mm')
  })

  const getStatusLabel = computed(() => (status: number) => {
    switch (status) {
      case 2:
        return locale.get('invoice_paid')
      case 3:
        return locale.get('invoice_declined')
      case 4:
        return locale.get('invoice_force_paid')
      case 5:
        return locale.get('invoice_cancelled')
      default:
        return locale.get('invoice_unpaid')
    }
  })

  return {
    tab,
    open,
    page,
    close,
    reset,
    search,
    toggle,
    changeTab,
    payInvoice,
    isProcessing,
    paidInvoices,
    getProperDate,
    getStatusLabel,
    declineInvoice,
    payAllInvoices,
    unpaidInvoices,
    isInvoicesOpen,
    paidInvoicesSum,
    unpaidInvoicesSum,
    unpaidInvoicesCount,
    paidInvoicesLoading,
    fetchPaidInvoicesSum,
    unpaidInvoicesLoading,
    fetchUnpaidInvoicesSum,
    filteredUnpaidInvoices,
    fetchUnpaidInvoicesCount
  }
})
