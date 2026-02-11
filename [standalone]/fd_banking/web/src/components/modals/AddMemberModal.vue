<script setup lang="ts">
import { VueFinalModal } from 'vue-final-modal'
import { XCircleIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { ref } from 'vue'
import { z as zod } from 'zod'
import { useField, useForm } from 'vee-validate'
import { toFormValidator } from '@vee-validate/zod'
import { fetched, resource } from '@/utils'
import { Switch, SwitchDescription, SwitchGroup, SwitchLabel } from '@headlessui/vue'
import { EventBus } from '@/event-bus'
import { useLocaleStore } from '@/stores/locale'

const bank = useBankStore()
const locale = useLocaleStore()

const props = defineProps<{
  id?: number | undefined
}>()

const emit = defineEmits<{
  (e: 'closeModal'): void
  (e: 'updateMembers'): void
}>()

const isDoingAction = ref<boolean>(false)
const responseError = ref<string>('')

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
  }
}

const validationSchema = toFormValidator(
  zod.object({
    citizen_id: zod
      .string({
        invalid_type_error: locale.get('citizen_id_must_be_a_string'),
        required_error: locale.get('citizen_id_is_required')
      })
      .min(1, locale.get('citizen_id_must_be_at_least_8_characters_long'))
      .max(15, locale.get('citizen_id_must_be_at_most_8_characters_long'))
      .refine((value) => /[a-zA-Z0-9]/.test(value), locale.get('only_letters_and_numbers_allowed')),
    can_deposit: zod.boolean(),
    can_withdraw: zod.boolean(),
    can_transfer: zod.boolean(),
    can_export: zod.boolean(),
    can_control_members: zod.boolean()
  })
)

const { handleSubmit } = useForm({
  validationSchema,
  initialValues: {
    can_deposit: false,
    can_withdraw: false,
    can_transfer: false,
    can_export: false,
    can_control_members: false
  }
})

const { value: citizenId, errorMessage: citizenIdError } = useField('citizen_id')
const { value: canDeposit, errorMessage: canDepositError } = useField<boolean>('can_deposit')
const { value: canWithdraw, errorMessage: canWithdrawError } = useField<boolean>('can_withdraw')
const { value: canTransfer, errorMessage: canTransferError } = useField<boolean>('can_transfer')
const { value: canExport, errorMessage: canExportError } = useField<boolean>('can_export')
const { value: canControlMembers, errorMessage: canControlMembersError } =
  useField<boolean>('can_control_members')

const addMemberHandle = handleSubmit(async (values) => {
  if (!isDoingAction.value) {
    responseError.value = ''
    isDoingAction.value = true

    try {
      EventBus.on('bank:addMemberAnswer', (data: any) => {
        EventBus.off('bank:addMemberAnswer')

        if (data.isSuccess) {
          isDoingAction.value = false
          emit('updateMembers')
          closeModal()

          return
        }

        responseError.value = locale.get('adding_member_failed_please_try_again')
        isDoingAction.value = false
      })

      const response = await fetched(`https://${resource()}/addNewMember`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          citizen_id: values.citizen_id,
          can_deposit: values.can_deposit,
          can_withdraw: values.can_withdraw,
          can_transfer: values.can_transfer,
          can_export: values.can_export,
          can_control_members: values.can_control_members,
          id: props.id
        })
      })

      const data = await response.json()

      if (!data) {
        responseError.value = locale.get('adding_member_failed_please_try_again')
        isDoingAction.value = false
        return
      }
    } catch (e) {
      EventBus.off('bank:addMemberAnswer')
      responseError.value = locale.get('adding_member_failed_please_try_again')
      isDoingAction.value = false
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
      <h1 class="text-gray-200 font-bold text-xl">Add member</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <form class="flex flex-col gap-3" @submit.prevent="addMemberHandle()">
      <div>
        <label for="Citizen ID" class="block text-sm font-medium leading-6 text-gray-200">{{
          locale.get('citizen_id')
        }}</label>
        <div class="mt-2">
          <input
            v-model="citizenId"
            type="text"
            name="Citizen ID"
            id="Citizen ID"
            class="block w-full rounded-md border-0 py-1.5 bg-transparent text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:ring-1 focus:ring-inset focus:ring-gray-400"
            placeholder="XXX12345"
          />
        </div>
        <p class="mt-1 text-sm text-red-400" v-if="citizenIdError">
          {{ citizenIdError }}
        </p>
      </div>
      <SwitchGroup as="div" class="flex items-center justify-between px-2">
        <span class="flex flex-grow-0 flex-col w-2/3">
          <SwitchLabel as="span" class="text-sm font-medium leading-6 text-gray-200" passive>
            {{ locale.get('can_deposit_label') }}
          </SwitchLabel>
          <SwitchDescription as="span" class="text-sm text-gray-400">{{
            locale.get('can_deposit_description')
          }}</SwitchDescription>
        </span>
        <Switch
          v-model="canDeposit"
          :class="[
            canDeposit ? 'bg-green-400' : 'bg-gray-400',
            'relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2'
          ]"
        >
          <span
            aria-hidden="true"
            :class="[
              canDeposit ? 'translate-x-5' : 'translate-x-0',
              'pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow ring-0 transition duration-200 ease-in-out'
            ]"
          />
        </Switch>
      </SwitchGroup>
      <p class="mt-1 text-sm text-red-400" v-if="canDepositError">
        {{ canDepositError }}
      </p>
      <SwitchGroup as="div" class="flex items-center justify-between px-2">
        <span class="flex flex-grow-0 flex-col w-2/3">
          <SwitchLabel as="span" class="text-sm font-medium leading-6 text-gray-200" passive>
            {{ locale.get('can_withdraw_label') }}
          </SwitchLabel>
          <SwitchDescription as="span" class="text-sm text-gray-400">
            {{ locale.get('can_withdraw_description') }}
          </SwitchDescription>
        </span>
        <Switch
          v-model="canWithdraw"
          :class="[
            canWithdraw ? 'bg-green-400' : 'bg-gray-400',
            'relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2'
          ]"
        >
          <span
            aria-hidden="true"
            :class="[
              canWithdraw ? 'translate-x-5' : 'translate-x-0',
              'pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow ring-0 transition duration-200 ease-in-out'
            ]"
          />
        </Switch>
      </SwitchGroup>
      <p class="mt-1 text-sm text-red-400" v-if="canWithdrawError">
        {{ canWithdrawError }}
      </p>
      <SwitchGroup as="div" class="flex items-center justify-between px-2">
        <span class="flex flex-grow-0 flex-col w-2/3">
          <SwitchLabel as="span" class="text-sm font-medium leading-6 text-gray-200" passive>
            {{ locale.get('can_transfer_label') }}
          </SwitchLabel>
          <SwitchDescription as="span" class="text-sm text-gray-400">
            {{ locale.get('can_transfer_description') }}
          </SwitchDescription>
        </span>
        <Switch
          v-model="canTransfer"
          :class="[
            canTransfer ? 'bg-green-400' : 'bg-gray-400',
            'relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2'
          ]"
        >
          <span
            aria-hidden="true"
            :class="[
              canTransfer ? 'translate-x-5' : 'translate-x-0',
              'pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow ring-0 transition duration-200 ease-in-out'
            ]"
          />
        </Switch>
      </SwitchGroup>
      <p class="mt-1 text-sm text-red-400" v-if="canTransferError">
        {{ canTransferError }}
      </p>
      <SwitchGroup as="div" class="flex items-center justify-between px-2">
        <span class="flex flex-grow-0 flex-col w-2/3">
          <SwitchLabel as="span" class="text-sm font-medium leading-6 text-gray-200" passive>
            {{ locale.get('can_export_label') }}
          </SwitchLabel>
          <SwitchDescription as="span" class="text-sm text-gray-400">
            {{ locale.get('can_export_description') }}
          </SwitchDescription>
        </span>
        <Switch
          v-model="canExport"
          :class="[
            canExport ? 'bg-green-400' : 'bg-gray-400',
            'relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2'
          ]"
        >
          <span
            aria-hidden="true"
            :class="[
              canExport ? 'translate-x-5' : 'translate-x-0',
              'pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow ring-0 transition duration-200 ease-in-out'
            ]"
          />
        </Switch>
      </SwitchGroup>
      <p class="mt-1 text-sm text-red-400" v-if="canExportError">
        {{ canExportError }}
      </p>
      <SwitchGroup as="div" class="flex items-center justify-between px-2">
        <span class="flex flex-grow-0 flex-col w-2/3">
          <SwitchLabel as="span" class="text-sm font-medium leading-6 text-gray-200" passive>
            {{ locale.get('can_can_control_label') }}
          </SwitchLabel>
          <SwitchDescription as="span" class="text-sm text-gray-400">
            {{ locale.get('can_can_control_description') }}
          </SwitchDescription>
        </span>
        <Switch
          v-model="canControlMembers"
          :class="[
            canControlMembers ? 'bg-green-400' : 'bg-gray-400',
            'relative inline-flex h-6 w-11 flex-shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2'
          ]"
        >
          <span
            aria-hidden="true"
            :class="[
              canControlMembers ? 'translate-x-5' : 'translate-x-0',
              'pointer-events-none inline-block h-5 w-5 transform rounded-full bg-white shadow ring-0 transition duration-200 ease-in-out'
            ]"
          />
        </Switch>
      </SwitchGroup>
      <p class="mt-1 text-sm text-red-400" v-if="canControlMembersError">
        {{ canControlMembersError }}
      </p>
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
          @click.prevent="() => addMemberHandle()"
          class="flex w-full justify-center rounded-md py-2 px-3 text-sm font-semibold shadow-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2"
        >
          {{ locale.get('add_label') }}
        </button>
      </div>
    </form>
  </VueFinalModal>
</template>
