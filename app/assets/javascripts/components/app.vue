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
  Question = require './question.vue'

  module.exports =
    components:
      'title-bar': TitleBar
      'question': Question
</script>

