import { EventBus } from '@/event-bus'
import { fetched } from '@/utils'
import { defineStore } from 'pinia'
import { ref } from 'vue'
import { useLoansStore } from './loans'
import { v4 as uuidv4 } from 'uuid'

export type Tab = 'requests' | 'active' | 'paid_off' | 'other'

export const useLoansManagementStore = defineStore('loans-management', () => {
  const loansStore = useLoansStore()
  const isLoansManageOpen = ref<boolean>(false)
  const canManagePermissions = ref<Record<string, any> | boolean>(false)
  const tab = ref<Tab>('requests')
  const page = ref<number>(1)
  const loans = ref<any[]>([])
  const identifier = ref<string>(uuidv4())

  const reset = () => {
    isLoansManageOpen.value = false
    page.value = 1
    loans.value = []
  }

  const open = () => {
    identifier.value = uuidv4()
  }

  const close = () => {
    reset()
  }

  const toggle = () => {
    isLoansManageOpen.value = !isLoansManageOpen.value

    if (isLoansManageOpen.value) {
      open()
    }

    if (!isLoansManageOpen.value) {
      close()
    }
  }

  const changeTab = (newTab: Tab) => {
    page.value = 1
    loans.value = []

    tab.value = newTab
  }

  const loansLoading = async ($state: any) => {
    try {
      const response = await fetched(`https://${loansStore.loansResource}/getLoansManagement`, {
        method: 'POST',
        body: JSON.stringify({
          status: tab.value,
          page: page.value,
          limit: 20
        })
      })

      const json: Array<any> = await response.json()

      if (json.length < 20) {
        loans.value!.push(...json)
        $state.complete()
      } else {
        loans.value!.push(...json)
        $state.loaded()
      }

      page.value++
    } catch (error) {
      $state.error()
    }
  }

  const hasPermission = (permission: string) => {
    if (typeof canManagePermissions.value === 'boolean') {
      return false
    }

    return canManagePermissions.value[permission] ?? false
  }

  const setPermissions = (permissions: Record<string, any>) => {
    canManagePermissions.value = permissions
  }

  const fetchPermissions = async () => {
    if (!loansStore.loansResource) return

    await fetched(`https://${loansStore.loansResource}/fetchManagementPermissions`, {
      method: 'POST',
      body: JSON.stringify({})
    })
  }

  const approveLoan = async (id: number) => {
    if (!loansStore.loansResource) return

    try {
      const response = await fetched(`https://${loansStore.loansResource}/approveLoan`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const data: boolean = await response.json()

      if (data) {
        loans.value = loans.value.filter((loan) => loan.id !== id)
      }
    } catch (error) {
      console.error(error)
    }
  }

  const rejectLoan = async (id: number) => {
    if (!loansStore.loansResource) return

    try {
      const response = await fetched(`https://${loansStore.loansResource}/rejectLoan`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const data: boolean = await response.json()

      if (data) {
        loans.value = loans.value.filter((loan) => loan.id !== id)
      }
    } catch (error) {
      console.error(error)
    }
  }

  const cancelLoan = async (id: number) => {
    if (!loansStore.loansResource) return

    try {
      const response = await fetched(`https://${loansStore.loansResource}/cancelLoan`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const data: boolean = await response.json()

      if (data) {
        loans.value = loans.value.filter((loan) => loan.id !== id)
      }
    } catch (error) {
      console.error(error)
    }
  }

  return {
    tab,
    open,
    loans,
    reset,
    close,
    toggle,
    changeTab,
    cancelLoan,
    approveLoan,
    rejectLoan,
    identifier,
    loansLoading,
    hasPermission,
    setPermissions,
    fetchPermissions,
    isLoansManageOpen
  }
})

EventBus.on('loans:setCanManageLoans', (data: any) => {
  const loansManagement = useLoansManagementStore()

  loansManagement.setPermissions(data)
})

EventBus.on('bank:opened', () => {
  const loansManagement = useLoansManagementStore()

  loansManagement.fetchPermissions()
})
