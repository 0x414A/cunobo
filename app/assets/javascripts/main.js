//= require_self

var Vue = require('vue')
var App = require('./components/app.vue')

new Vue({
  el: '#body',
  components: {
    'app': App,
  },
  http: {
    root: '/',
    headers: {
      Authorization: 'Basic YXBpOnBhc3N3b3Jk'
    }
  }
})
