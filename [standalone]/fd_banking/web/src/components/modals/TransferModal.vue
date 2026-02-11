<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { ref } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched, resource } from '@/utils'
import { useLocaleStore } from '@/stores/locale'
import { EventBus } from '@/event-bus'

const locale = useLocaleStore()
const bank = useBankStore()

const props = defineProps<{
  id?: number | undefined
  name?: string
  balance?: number
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const closeModal = (skip: boolean = false) => {
  if (!isDoingAction.value || skip) {
    emit('closeModal')
    responseError.value = ''
  }
}

const AccountNumberSchema = zod.object({
  account_number: zod.coerce
    .number({
      invalid_type_error: locale.get('account_number_invalid_type'),
      required_error: locale.get('account_number_is_required')
    })
    .refine((value) => Number.isInteger(value), locale.get('account_number_invalid_type'))
})

const PlayerIdSchema = zod.object({
  player_id: zod.coerce
    .number({
      invalid_type_error: locale.get('player_id_invalid_type'),
      required_error: locale.get('player_id_is_required')
    })
    .refine((value) => Number.isInteger(value), locale.get('player_id_invalid_type'))
})

const validationSchema = toFormValidator(
  zod
    .object({
      amount: zod
        .number({
          invalid_type_error: locale.get('amount_must_be_a_number'),
          required_error: locale.get('amount_is_required')
        })
        .min(1, locale.get('amount_must_be_greater_than_0'))
        .max(1000000000, locale.get('amount_must_be_less_than_1000000000'))
        .refine((value) => Number.isInteger(value), locale.get('amount_must_be_integer'))
        .refine(
          (value) => value <= props.balance!,
          locale.get('there_is_not_enough_money_in_account')
        ),
      description: zod.string({
        invalid_type_error: locale.get('description_must_be_a_string'),
        required_error: locale.get('description_is_required')
      })
    })
    .merge(AccountNumberSchema.partial())
    .merge(PlayerIdSchema.partial())
    .superRefine((data, ctx) => {
      if (data.account_number && data.player_id) {
        ctx.addIssue({
          code: zod.ZodIssueCode.custom,
          path: ['account_number'],
          message: locale.get('fill_in_only_one_field_account_number_or_player_id')
        })
      } else if (data.account_number) {
        const result = AccountNumberSchema.safeParse(data)
        if (!result.success) {
          result.error.errors.forEach((issue) => ctx.addIssue(issue))
        }
      } else if (data.player_id) {
        const result = PlayerIdSchema.safeParse(data)
        if (!result.success) {
          result.error.errors.forEach((issue) => ctx.addIssue(issue))
        }
      } else {
        ctx.addIssue({
          code: zod.ZodIssueCode.custom,
          path: ['account_number'],
          message: locale.get('account_number_or_player_id_is_required')
        })
      }
    })
)

const { handleSubmit } = useForm({
  validationSchema
})

const { value: accountNumber, errorMessage: accountNumberError } = useField('account_number')
const { value: playerId, errorMessage: playerIdError } = useField('player_id')
const { value: amount, errorMessage: amountError } = useField('amount')
const { value: description, errorMessage: descriptionError } = useField('description')

const transferHandle = handleSubmit(async (values) => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true
    try {
      const response = await fetched(
        `https://${resource()}/transferMoney`,
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            amount: values.amount,
            reason: values.description,
            id: props.id,
            account_number: values.account_number,
            player_id: values.player_id
          })
        },
        3000
      )
      const data = await response.json()

      if (!data) {
        responseError.value = locale.get('transfer_failed_please_try_again')

        setTimeout(() => {
          isDoingAction.value = false
        }, 2500)

        setTimeout(() => {
          closeModal(true)
        }, 1500)

        return
      }

      isDoingAction.value = false
      bank.fetchAccount(props.id!, true)
      closeModal()
    } catch (e) {
      responseError.value = locale.get('transfer_failed_please_try_again')

      setTimeout(() => {
        isDoingAction.value = false
      }, 2500)

      setTimeout(() => {
        EventBus.emit('bank:close')

        try {
          fetch(`https://${resource()}/bankClosed`, {
            method: 'POST'
          })
        } catch (e) {
          console.log('Bank closed, TransferModal')
          console.error(e)
        }
      }, 1500)
    }
  }
})
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    :clickToClose="!isDoingAction"
    :escToClose="!isDoingAction"
    class="flex justify-center items-center"
    content-class="flex flex-col max-w-md w-full p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('transfer_title') }}</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('transfer_description') }}<br /><br />
      {{ locale.get('current_account') }}
      <span class="font-semibold text-gray-300"> {{ name ?? locale.get('unknown') }} </span>.
    </p>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="transferHandle()">
      <div class="flex flex-1 items-end gap-5">
        <div>
          <label for="account_number" class="block text-sm font-medium leading-6 text-gray-200">
            {{ locale.get('account_number_label') }}
          </label>
          <div class="mt-2">
            <input
              type="number"
              v-model="accountNumber"
              name="account_number"
              id="account_number"
              class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
              placeholder="1001"
            />
          </div>
        </div>
        <p class="text-gray-500 text-sm mb-3">
          {{ locale.get('or_label') }}
        </p>
        <div>
          <label for="player_id" class="block text-sm font-medium leading-6 text-gray-200">
            {{ locale.get('player_id_label') }}
          </label>
          <div class="mt-2">
            <input
              type="number"
              v-model="playerId"
              name="player_id"
              id="player_id"
              class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
              placeholder="1001"
            />
          </div>
        </div>
      </div>
      <div class="flex items-start justify-between gap-10">
        <p class="mt-1 text-sm text-red-400">
          {{ accountNumberError }}
        </p>
        <p class="mt-1 text-sm text-red-400">
          {{ playerIdError }}
        </p>
      </div>
      <div>
        <label for="amount" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('amount_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="amount"
            type="number"
            name="amount"
            id="amount"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            placeholder="200"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="amountError">
          {{ amountError }}
        </p>
        <p class="mt-2 text-sm text-gray-500">
          {{ locale.get('in_account_currently_there_is') }}
          <span class="font-semibold text-green-600">{{
            balance
              ? balance.toLocaleString(locale.get('currency_language'), {
                  style: 'currency',
                  currency: locale.get('currency')
                })
              : locale.get('no_funds')
          }}</span>
        </p>
      </div>
      <div>
        <label for="description" class="block text-sm font-medium leading-6 text-gray-200">
          {{ locale.get('description_label') }}
        </label>
        <div class="mt-2">
          <input
            v-model="description"
            type="text"
            name="description"
            id="description"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            :placeholder="locale.get('transfer_description_placeholder')"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="descriptionError">
          {{ descriptionError }}
        </p>
      </div>
      <div class="relative">
        <div class="absolute inset-0 flex items-center" aria-hidden="true">
          <div class="w-full border-t border-[#373A40]" />
        </div>
      </div>
      <div>
        <p class="mt-1 text-sm text-red-400" v-if="responseError">
          {{ responseError }}
        </p>
        <button
          type="submit"
          :class="[...bank.currentTheme.button, isDoingAction ? 'btn-loading' : '']"
          :disabled="isDoingAction"
          class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('transfer_confirm_button') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
