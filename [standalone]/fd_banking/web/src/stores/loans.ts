import { EventBus } from '@/event-bus'
import { fetched, resource } from '@/utils'
import { defineStore } from 'pinia'
import { computed, ref } from 'vue'
import { useLocaleStore } from './locale'
import { DateTime } from 'luxon'
import { useBankStore } from './bank'
import { v4 as uuidv4 } from 'uuid'

export type Tab = 'requests' | 'active' | 'paid_off' | 'other'

export const useLoansStore = defineStore('loans', () => {
  const loansResource = ref<string | null>(null)
  const locale = useLocaleStore()
  const bank = useBankStore()

  const scoreColors: Record<number, string> = {
    0: 'text-red-500',
    400: 'text-yellow-500',
    700: 'text-green-500'
  }

  const isLoansOpen = ref<boolean>(false)
  const tab = ref<Tab>('active')
  const scoreInformation = ref<Record<string, any>>({})
  const score = ref<number>(699)
  const loans = ref<any[]>([])
  const page = ref<number>(1)
  const identifier = ref<string>(uuidv4())

  const scoreColor = computed(() => {
    const color: string | undefined = Object.keys(scoreColors)
      .reverse()
      .find((key) => {
        return score.value >= parseInt(key)
      })

    return color ? scoreColors[+color!] : 'bg-red-500'
  })

  const scorePercentage = computed(() => {
    const percentage =
      ((score.value - (scoreInformation.value.Minimum || 0)) /
        ((scoreInformation.value.Maximum || 800) - (scoreInformation.value.Minimum || 0))) *
      100

    if (percentage < 0) {
      return 0
    }

    if (percentage > 100) {
      return 100
    }

    return percentage
  })

  const isLoansEnabled = computed(() => !!loansResource.value)

  // Methods
  const changeTab = (newTab: Tab) => {
    loans.value = []
    page.value = 1

    tab.value = newTab
  }

  const loansEnabled = async () => {
    try {
      const request = await fetched(`https://${resource()}/getLoansResource`, {
        method: 'POST',
        body: JSON.stringify({})
      })

      const response: string = await request.json()

      if (response) {
        loansResource.value = response
      }
    } catch (error: any) {}
  }

  const fetchLoansInformation = async () => {
    if (!loansResource.value || loansResource.value === null) {
      return
    }

    fetched(`https://${loansResource.value}/generalLoansInformation`, {
      method: 'POST',
      body: JSON.stringify({})
    })
  }

  const loansLoading = async ($state: any) => {
    try {
      const response = await fetched(`https://${loansResource.value}/fetchGetUserLoans`, {
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

  const reset = () => {
    isLoansOpen.value = false
  }

  const open = () => {
    fetchLoansInformation()

    loans.value = []
    page.value = 1
    identifier.value = uuidv4()
  }

  const close = () => {
    reset()
  }

  const toggle = () => {
    isLoansOpen.value = !isLoansOpen.value

    if (isLoansOpen.value) {
      open()
    }

    if (!isLoansOpen.value) {
      close()
    }
  }

  const makePayment = async (id: number) => {
    try {
      const request = await fetched(`https://${loansResource.value}/makeLoanPayment`, {
        method: 'POST',
        body: JSON.stringify({
          id
        })
      })

      const response: boolean | Record<string, any> = await request.json()

      if (response) {
        loans.value = []
        page.value = 1
        identifier.value = uuidv4()

        return
      }
    } catch (error: any) {
      console.log(error)
    }
  }

  const getProperDate = computed(() => (date: string) => {
    if (!date) return locale.get('no_due_date')

    return DateTime.fromISO(date, {
      zone: 'UTC'
    })
    .setLocale(locale.get('calendar_language'))
      .setZone(bank.timeZone)
      .toFormat('yyyy-MM-dd HH:mm')
  })

  const stringifyStatus = (status: number) => {
    switch (status) {
      case 0:
        return locale.get('loans_pending_player_approval')
      case 1:
        return locale.get('loans_pending_manager_approval')
      case 2:
        return locale.get('loans_active')
      case 3:
        return locale.get('loan_paid_off')
      case 4:
        return locale.get('loans_cancelled')
      case 5:
        return locale.get('loans_rejected')
      default:
        return locale.get('loans_unknown')
    }
  }

  const getRelativeDate = (date: string) => {
    return DateTime.fromISO(date, {
      zone: 'UTC'
    })
    .setLocale(locale.get('calendar_language'))
      .setZone(bank.timeZone)
      .toRelative()
  }

  return {
    tab,
    score,
    open,
    loans,
    close,
    toggle,
    changeTab,
    identifier,
    scoreColor,
    isLoansOpen,
    makePayment,
    loansEnabled,
    loansLoading,
    getProperDate,
    loansResource,
    isLoansEnabled,
    scorePercentage,
    getRelativeDate,
    stringifyStatus,
    scoreInformation
  }
})

EventBus.on('loans:setInformation', (data: any) => {
  const loans = useLoansStore()

  if (data.score) {
    loans.score = data.score
  }

  if (data.scoreSystemInformation) {
    loans.scoreInformation = data.scoreSystemInformation
  }
})
