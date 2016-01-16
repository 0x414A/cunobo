//= require_self

// CommonJS
var Vue = require('vue')
var Router = require('vue-router')
var App = require('./components/app.vue')
var Dashboard = require('./components/dashboard.vue')

// Register modules
Vue.use(Router)

// Set routing
var router = new Router()

router.map({
  '/dashboard': {
    component: Dashboard
  }
})

router.start(App, "#app")

