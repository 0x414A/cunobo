//= require_self

// CommonJS
var Vue = require('vue')
var Router = require('vue-router')
var Resource = require('vue-resource')
var App = require('./components/app.vue')
var Dashboard = require('./components/dashboard.vue')

// Register modules
Vue.use(Router)
Vue.use(Resource)

// Set routing
var router = new Router()

router.map({
  '/dashboard': {
    component: Dashboard
  }
})

router.start(App, "#app")

