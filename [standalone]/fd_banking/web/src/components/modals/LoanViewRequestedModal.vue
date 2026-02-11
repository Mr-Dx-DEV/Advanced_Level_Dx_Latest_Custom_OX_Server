<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useLocaleStore } from '@/stores/locale'
import { computed, onMounted, ref } from 'vue'
import { useLoansStore } from '@/stores/loans'
import { fetched } from '@/utils'

const locale = useLocaleStore()
const loans = useLoansStore()

const props = defineProps<{
  id?: number | undefined
}>()
const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const information = ref<Record<string, any>>({})
const pluralizedDuration = computed(() => {
  let durationType = information.value.loan.payments_cycle === 1 ? 'day' : 'week'
  let durationPlural = information.value.loan.duration === 1 ? 'single' : 'plural'

  const localized = locale.get(`${durationType}_${durationPlural}`)

  return `${localized}`
})

const fetchRequestedLoanInformation = async () => {
  try {
    const response = await fetched(`https://${loans.loansResource}/fetchRequestedLoanInformation`, {
      method: 'POST',
      body: JSON.stringify({
        id: props.id
      })
    })

    const json: Record<string, any> = await response.json()

    if (!json) {
      emit('closeModal')
      return
    }

    information.value = json
    information.value.player.charinfo = JSON.parse(json.player.charinfo)
  } catch (error) {
    emit('closeModal')
  }
}

onMounted(() => {
  if (props.id) {
    fetchRequestedLoanInformation()
  }
})
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    class="flex justify-center items-center"
    content-class="flex flex-col max-w-md w-full p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">
        {{ locale.get('requested_loan_overview_title') }}
      </h1>
      <a href="#" @click.prevent="emit('closeModal')">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <div class="flex flex-col flex-1">
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_player_identifier') }}</p>
        <p class="font-semibold text-white">{{ information.player.citizenid }}</p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_full_name') }}</p>
        <p class="font-semibold text-white">
          {{ information.player.charinfo.firstname }} {{ information.player.charinfo.lastname }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_player_credit_score') }}</p>
        <p class="font-semibold text-white">
          {{ information.score }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_player_unpaid_loans') }}</p>
        <p class="font-semibold text-white">
          {{ information.loan.unpaidLoans }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_player_paid_loans') }}</p>
        <p class="font-semibold text-white">
          {{ information.loan.paidLoans }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_player_cancelled_loans') }}</p>
        <p class="font-semibold text-white">
          {{ information.loan.cancelledLoans }}
        </p>
      </div>
    </div>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <div class="flex flex-col flex-1">
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_type') }}</p>
        <p class="font-semibold text-white">{{ information.loan.type }}</p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">
          {{ locale.get('loan_duration_title') }}
        </p>
        <p class="text-white font-semibold text-right">
          {{ information.loan.duration }} {{ pluralizedDuration }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('interest_rate_title') }}</p>
        <p class="font-semibold text-white">{{ information.loan.interest }}%</p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_each_payment_title') }}</p>
        <p class="font-semibold text-white">
          {{
            information.loan.payment_amount.toLocaleString(locale.get('currency_language'), {
              style: 'currency',
              currency: locale.get('currency')
            })
          }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('interest_rate_amount_title') }}</p>
        <p class="font-semibold text-white">
          {{
            (information.loan.total - information.loan.amount).toLocaleString(
              locale.get('currency_language'),
              {
                style: 'currency',
                currency: locale.get('currency')
              }
            )
          }}
        </p>
      </div>
      <div class="flex justify-between">
        <p class="text-gray-300">{{ locale.get('loan_total_amount_with_interest_title') }}</p>
        <p class="font-semibold text-white">
          {{
            information.loan.total.toLocaleString(locale.get('currency_language'), {
              style: 'currency',
              currency: locale.get('currency')
            })
          }}
        </p>
      </div>
    </div>
  </VueFinalModal>
</template>
