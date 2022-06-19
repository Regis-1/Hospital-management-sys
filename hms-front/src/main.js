import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import CoreuiVue from '@coreui/vue'
import CIcon from '@coreui/icons-vue'
import { iconsSet as icons } from '@/assets/icons'
import DocsCallout from '@/components/DocsCallout'
import DocsExample from '@/components/DocsExample'

import axios from 'axios'
import VueAxios from 'vue-axios'

axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*'
// Vue.use(VueAxios, { $myHttp: axios, axios2: axios2 }) // or app.use() for Vue 3 Optiona API

const app = createApp(App)
app.use(store)
app.use(router)
app.use(CoreuiVue)

app.use(VueAxios, axios)

app.provide('icons', icons)
app.component('CIcon', CIcon)
app.component('DocsCallout', DocsCallout)
app.component('DocsExample', DocsExample)

app.mount('#app')
