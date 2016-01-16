<template>
  <p v-if="!shouldShowEditor" v-on:click="showEditor">Tap to answer</p>
  <form v-if="shouldShowEditor">
    <textarea class="u-full-width" placeholder="Type your thoughts" id="entry-writing"></textarea>
    <input class="button-primary" type="submit" value="Submit">
  </form>
</template>

<script lang="coffee">
  module.exports =
    data: ->
      shouldShowEditor: false
    methods: 
      showEditor: ->
        @shouldShowEditor = true
</script>
