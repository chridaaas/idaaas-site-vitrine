import { createApp } from 'vue'
import App from './App.vue'

document.documentElement.dataset.environment = import.meta.env.VITE_APP_ENV

createApp(App).mount('#app')