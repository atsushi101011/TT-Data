<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import ProUserIndexPage from 'ProUserIndexPage.vue'
import ProUserShowPage from 'ProUserShowPage.vue'
import ProUserNewPage from 'ProUserNewPage.vue'

const router = new VueRouter({
   routes: [
    { path: '/',
      component: ProUserIndexPage  },
    { path: '/pro_users/:id(\\d+)',  // :id は数値のみに制限する
      name: 'ProUserShowPage',
      component: ProUserShowPage  },
    { path: '/pro_users/new',
      name: 'ProUserNewPage',
      component: ProUserNewPage  }
  ]
})

// ref. https://jp.vuejs.org/v2/guide/plugins.html#%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E4%BD%BF%E7%94%A8
Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>