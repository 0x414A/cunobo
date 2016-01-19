<template>
  <div class="main">
    <title-bar :current-user="currentUser"></title-bar>
    <div class="container">
      <router-view :current-user="currentUser"></router-view>
    </div>
  </div>
</template>

<script lang="coffee">
  TitleBar = require './title_bar.vue'

  module.exports =
    components:
      'title-bar': TitleBar
    data: ->
      currentUser: ''
    methods:
      getCurrentUser: ->
        @$http.get('users/get_current_user').then (response) ->
          @currentUser = response.data.current_user.email
    ready: ->
      @getCurrentUser()
</script>
