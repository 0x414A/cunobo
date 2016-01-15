<style>
  .title-bar {
    height: 40px;
    border-bottom-style: solid;
    border-bottom-color: #797A9E;
    border-bottom-width: 1px;
  }

  .app-title {
    padding-left: 20px;
  }
</style>

<template>
  <div class="title-bar u-full-width">
    <span class="app-title app-title-font">cunobo.</span>

    <span class="" v-if="currentUser">{{currentUser}}</span>
    <span class="" v-else>Sign in</span>
  </div>
</template>

<script lang="coffee">
  Vue = require 'vue'
  Vue.use(require('vue-resource'))

  currentUser = null

  module.exports =
    data: ->
      currentUser: currentUser
    ready: ->
      this.$http.get('users/get_current_user').then((response) ->
        if response.data.current_user
          this.$set 'currentUser', response.data.current_user.email
  )
</script>
