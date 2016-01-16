<template>
  <title-bar></title-bar>
  <router-view></router-view>
</template>

<script lang="coffee">
  TitleBar = require './title_bar.vue'
  
  module.exports =
    components:
      'title-bar': TitleBar
</script>

