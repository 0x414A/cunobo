<template>
  <question></question>
</template>

<script lang="coffee">
  Question = require './question.vue'

  module.exports =
    components:
      'question': Question
</script>
