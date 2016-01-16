<template>
<<<<<<< 5136186fab63c535a79b6999736eb854bf0d97d1
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
=======
  <title-bar></title-bar>
  <question-interface></question-interface>
</template>

<script>
  var TitleBar = require('./title_bar.vue')
  var QuestionInterface = require('./question_interface.vue')

  module.exports = {
    components: {
      'title-bar': TitleBar,
      'question-interface': QuestionInterface
    }
  }
>>>>>>> Format, display and publish entries for a fixed student question
</script>

