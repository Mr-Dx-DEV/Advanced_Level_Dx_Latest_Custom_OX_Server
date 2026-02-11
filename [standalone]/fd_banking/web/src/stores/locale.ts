import { fetched, resource } from '@/utils'
import { defineStore } from 'pinia'
import { computed, ref } from 'vue'

export const useLocaleStore = defineStore('locale', () => {
  const strings = ref<Record<string, string>>({})

  const get = computed(() => (key: string) => {
    if (key === 'currency') {
      return strings.value[key] ?? 'USD'
    }

    if (key === 'currency_language') {
      return strings.value[key] ?? 'en-US'
    }

    return strings.value[key] || key
  })

  const fetchLocale = async () => {
    try {
      const response = await fetched(`https://${resource()}/loadLocale`, {
        method: 'POST'
      })

      const data = await response.json()

      strings.value = data
    } catch (e) {
      await fetchLocale()
    }
  }

  return {
    get,
    fetchLocale
  }
})
