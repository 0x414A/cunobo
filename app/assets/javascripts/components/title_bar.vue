<style lang="scss">
  $medium-color: #797A9E;

  .title-bar {
    height: 40px;
    border-bottom-style: solid;
    border-bottom-color: $medium-color;
    border-bottom-width: 1px;
  }

  .app-title {
    padding-left: 20px;
  }

  .user-status {
    .button {
      min-width: 80px;
      height: 28px;
      margin-top: 5px;
      margin-left: 15px;
      margin-right: 20px;
      padding-left: 10px;
      padding-right: 10px;
      color: $medium-color;
      line-height: 28px;
      border-radius: 3px;
      border: 1px solid $medium-color;
    }

    .current-user {
      font-size: 10pt;
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      color: $medium-color;
    }
  }
</style>

<template>
  <div class="title-bar u-full-width">
    <span class="app-title app-title-font">cunobo.</span>
    <div class="user-status u-pull-right">  
      <template v-if="currentUser">
        <span class="current-user">{{currentUser}}</span>
        <a class="button" data-method="delete" href="/users/sign_out">Sign out</a>  
      </template>
      <a class="button" href="/users/sign_in" v-else>Sign in</a>  
    </div> 
 </div>
</template>

<script lang="coffee">
  currentUser = null

  module.exports =
    data: ->
      currentUser: currentUser
    ready: ->
      @$http.get('users/get_current_user').then((response) ->
        if response.data.current_user
          @$set 'currentUser', response.data.current_user.email
      )
</script>
