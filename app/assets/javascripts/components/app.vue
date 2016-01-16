<template>
  <div class="main">
    <title-bar></title-bar>
    <div class="container">
      <router-view></router-view>
    </div>
  </div>
</template>

<script lang="coffee">
  TitleBar = require './title_bar.vue'

  module.exports =
    components:
      'title-bar': TitleBar
</script>
