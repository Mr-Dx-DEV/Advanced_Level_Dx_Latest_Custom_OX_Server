<script setup lang="ts">
import { VueFinalModal, useModal } from 'vue-final-modal'
import { XCircleIcon, TrashIcon } from '@heroicons/vue/20/solid'
import { useBankStore } from '@/stores/bank'
import { computed, onMounted, onUnmounted, ref } from 'vue'
import { fetched, resource } from '@/utils'
import { EventBus } from '@/event-bus'
import AddMemberModal from './AddMemberModal.vue'
import EditMemberModal from './EditMemberModal.vue'
import DeleteMemberModal from './DeleteMemberModal.vue'
import { useLocaleStore } from '@/stores/locale'

const locale = useLocaleStore()
const bank = useBankStore()

const props = defineProps<{
  id?: number | undefined
  name?: string
}>()

const search = ref<string>('')

type Member = {
  identifier: string
  can_deposit: number
  can_withdraw: number
  can_transfer: number
  can_control_members: number
  can_export: number
  is_owner: number
  member_name?: string
}

const {
  open: openAddMemberModal,
  close: closeAddMember,
  patchOptions: patchAddMemberOptions
} = useModal({
  component: AddMemberModal,
  attrs: {
    onCloseModal() {
      closeAddMember()
    },
    onUpdateMembers() {
      fetchMembers()
    }
  }
})

const openAddMember = () => {
  if (!bank.canControlMembers) return

  patchAddMemberOptions({
    attrs: {
      ...props
    }
  })

  openAddMemberModal()
}

const {
  open: openEditMemberModal,
  close: closeEditMember,
  patchOptions: patchEditMemberOptions
} = useModal({
  component: EditMemberModal,
  attrs: {
    onCloseModal() {
      closeEditMember()
    },
    onUpdateMembers() {
      fetchMembers()
    }
  }
})

const openEditMember = (member: Member) => {
  if (!bank.canControlMembers) return

  patchEditMemberOptions({
    attrs: {
      id: props.id,
      citizen_id: member.identifier,
      can_deposit: member.can_deposit,
      can_withdraw: member.can_withdraw,
      can_transfer: member.can_transfer,
      can_control_members: member.can_control_members,
      can_export: member.can_export
    }
  })

  openEditMemberModal()
}

const {
  open: openDeleteMemberModal,
  close: closeDeleteMember,
  patchOptions: patchDeleteMemberOptions
} = useModal({
  component: DeleteMemberModal,
  attrs: {
    onCloseModal() {
      closeDeleteMember()
    },
    onUpdateMembers() {
      fetchMembers()
    }
  }
})

const openDeleteMember = (member: Member) => {
  if (!bank.canControlMembers) return

  patchDeleteMemberOptions({
    attrs: {
      id: props.id,
      citizen_id: member.identifier
    }
  })

  openDeleteMemberModal()
}

const members = ref<Member[]>([])

const emit = defineEmits<{
  (e: 'closeModal'): void
}>()

const isDoingAction = ref<boolean>(false)

const closeModal = () => {
  if (!isDoingAction.value) {
    emit('closeModal')
  }
}

function truncate(str: string, n: number) {
  return str.length > n ? str.slice(0, n - 1) + '&hellip;' : str
}

const getMemberName = (member: Member) => {
  if (!member.member_name) {
    return truncate(member.identifier, 10)
  }

  return `${member.member_name}`
}

const fetchMembers = async () => {
  if (!isDoingAction.value) {
    isDoingAction.value = true

    try {
      EventBus.on('bank:fetchMembers', (data: any) => {
        EventBus.off('bank:fetchMembers')

        if (data.isSuccess) {
          isDoingAction.value = false

          members.value = data.members

          return
        }

        isDoingAction.value = false
      })

      const response = await fetched(`https://${resource()}/fetchMembers`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          id: props.id
        })
      })

      const data = await response.json()

      isDoingAction.value = false

      if (!data) {
        EventBus.off('bank:fetchMembers')
        return
      }
    } catch (e) {
      isDoingAction.value = false
      EventBus.off('bank:fetchMembers')
    }
  }
}

EventBus.on('bank:memberEvent', (data: any) => {
  if (data.id === props.id) {
    fetchMembers()

    closeAddMember()
    closeEditMember()
    closeDeleteMember()
  }
})

EventBus.on('closeAllModals', () => {
  closeAddMember()
  closeEditMember()
  closeDeleteMember()
})

const filteredMembers = computed<Array<Member>>(() => {
  return members.value.filter((member) => {
    if (search.value === '') return true

    return member.identifier?.toLowerCase().includes(search.value.toLowerCase()) ?? false
  })
})

onMounted(() => {
  if (props.id) {
    fetchMembers()
  }
})

onUnmounted(() => {
  EventBus.off('closeAllModals')
})
</script>
<template>
  <VueFinalModal
    teleportTo="#bankingContainer"
    :clickToClose="!isDoingAction"
    :escToClose="!isDoingAction"
    class="flex justify-center items-center"
    content-class="flex flex-col p-4 bg-primary rounded-2xl border border-[#373A40] gap-3"
  >
    <div class="flex items-center justify-between">
      <h1 class="text-gray-200 font-bold text-xl">{{ locale.get('members_management_title') }}</h1>
      <a href="#" @click.prevent="() => closeModal()">
        <XCircleIcon class="h-6 text-gray-500 hover:text-gray-200" />
        <ToolTip :text="locale.get('close_button_tooltip')" />
      </a>
    </div>
    <p class="text-gray-400 text-sm">
      {{ locale.get('members_management_description') }}
    </p>
    <div class="flex-1 flex justify-between items-center">
      <p class="text-gray-400 text-sm">
        {{ locale.get('members_management_managing_currently') }}
        <span class="font-semibold text-gray-300"> {{ name ?? locale.get('unknown') }} </span>.
      </p>
      <div class="flex items-center justify-between gap-3">
        <input
          type="text"
          name="fd_banking_search"
          id="search"
          v-model="search"
          class="block w-1/2 rounded-md border-0 py-1 px-1 bg-transparent text-sm text-white shadow-sm ring-1 ring-inset ring-[#373A40] placeholder:text-gray-400 focus:border-transparent focus:ring-0"
          :placeholder="locale.get('members_management_search_placeholder')"
        />
        <button
          type="button"
          class="block rounded-md px-3 py-2 text-center text-sm font-semibold focus-visible:outline"
          :class="[...bank.currentTheme.button]"
          @click.prevent="() => openAddMember()"
        >
          {{ locale.get('members_management_add_new_member_button') }}
        </button>
      </div>
    </div>

    <div class="relative">
      <div class="absolute inset-0 flex items-center" aria-hidden="true">
        <div class="w-full border-t border-[#373A40]" />
      </div>
    </div>
    <div class="max-h-80 overflow-x-hidden overflow-y-auto" v-if="members.length > 0">
      <div class="">
        <div class="flow-root">
          <div class="-my-2 overflow-x-auto -mx-8">
            <div class="inline-block min-w-full py-2 align-middle px-8">
              <table class="min-w-full divide-y divide-[#373A40]">
                <thead>
                  <tr>
                    <th
                      scope="col"
                      class="py-3.5 pr-3 text-left text-sm font-semibold text-white pl-0"
                    >
                      {{ locale.get('members_management_identifier') }}
                    </th>
                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">
                      {{ locale.get('members_management_can_deposit') }}
                    </th>
                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">
                      {{ locale.get('members_management_can_withdraw') }}
                    </th>
                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">
                      {{ locale.get('members_management_can_transfer') }}
                    </th>
                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">
                      {{ locale.get('members_management_can_export') }}
                    </th>
                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">
                      {{ locale.get('members_management_can_control') }}
                    </th>
                    <th scope="col" class="relative py-3.5 pl-3 pr-4 sm:pr-0"></th>
                  </tr>
                </thead>
                <tbody class="divide-y divide-[#373A40]">
                  <tr
                    v-for="member in filteredMembers"
                    :key="member.identifier"
                    class="hover:bg-[#373A40]"
                  >
                    <td
                      class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-white sm:pl-0"
                    >
                      {{ getMemberName(member) }}
                    </td>
                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                      {{
                        member.is_owner === 1
                          ? locale.get('yes_label')
                          : member.can_deposit === 1
                          ? locale.get('yes_label')
                          : locale.get('no_label')
                      }}
                    </td>
                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                      {{
                        member.is_owner === 1
                          ? locale.get('yes_label')
                          : member.can_withdraw === 1
                          ? locale.get('yes_label')
                          : locale.get('no_label')
                      }}
                    </td>
                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                      {{
                        member.is_owner === 1
                          ? locale.get('yes_label')
                          : member.can_transfer === 1
                          ? locale.get('yes_label')
                          : locale.get('no_label')
                      }}
                    </td>
                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                      {{
                        member.is_owner === 1
                          ? locale.get('yes_label')
                          : member.can_export === 1
                          ? locale.get('yes_label')
                          : locale.get('no_label')
                      }}
                    </td>
                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                      {{
                        member.is_owner === 1
                          ? locale.get('yes_label')
                          : member.can_control_members === 1
                          ? locale.get('yes_label')
                          : locale.get('no_label')
                      }}
                    </td>
                    <td
                      class="relative flex gap-1 items-center whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-0"
                    >
                      <button
                        v-if="member.is_owner === 0 && bank.canControlMembers"
                        type="button"
                        class="block rounded-md px-3 py-2 text-center text-sm font-semibold focus-visible:outline"
                        :class="[...bank.currentTheme.button]"
                        @click.prevent="() => openEditMember(member)"
                      >
                        {{ locale.get('edit_label') }}
                      </button>
                      <a
                        href="#"
                        v-if="member.is_owner === 0 && bank.canControlMembers"
                        @click.prevent="() => openDeleteMember(member)"
                        class="text-gray-400 hover:text-red-400"
                      >
                        <TrashIcon class="w-4 h-4" />
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </VueFinalModal>
</template>
