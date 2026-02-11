import type { App } from 'vue'
import Tooltip from './ToolTipComponent.vue'
import type { Props } from 'tippy.js'
import { defu } from 'defu'

type PluginOptions = Partial<Props>

export const tooltipOptionsInject = Symbol()
export const toolTipPlugin = (app: App, options: any) => {
  options = defu(options, { placement: 'left' })
  app.provide(tooltipOptionsInject, options)
  app.component('ToolTip', Tooltip)
}

export function createToolTipPlugin(options: PluginOptions) {
  return (app: App) => {
    toolTipPlugin(app, options)
  }
}
