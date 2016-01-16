<template>
  <question></question>
  <editor></editor>
</template>

<script lang="coffee">
  Question = require './question.vue'
  Editor = require './editor.vue'

  module.exports =
    components:
      'question': Question
      'editor': Editor
</script>
