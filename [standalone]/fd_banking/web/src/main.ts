import { createApp } from 'vue'
import { createPinia } from 'pinia'
import { createVfm } from 'vue-final-modal'
import { EventBus } from './event-bus'
import App from './App.vue'

import 'vue-final-modal/style.css'
import './assets/main.css'

import './string.extension'

import { createToolTipPlugin } from './pluggins/tooltip'
import VueTailwindDatepicker from 'vue-tailwind-datepicker'

const vfm = createVfm()
const app = createApp(App)
  // @ts-ignore
  .use(VueTailwindDatepicker)
  .use(createPinia())
  .use(
    createToolTipPlugin({
      arrow: true,
      placement: 'top'
    })
  )
  .use(vfm)

window.addEventListener('message', (event) => {
  EventBus.emit(event.data.action, event.data.data || {})
})

app.mount('#fd_banking')
