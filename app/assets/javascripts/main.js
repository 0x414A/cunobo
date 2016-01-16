//= require_self

// Vue modules
var Vue = require('vue')
var Router = require('vue-router')
var Resource = require('vue-resource')

// Register modules
Vue.use(Router)
Vue.use(Resource)

// Components
var App = require('./components/app.vue')
var Dashboard = require('./components/dashboard.vue')

// Set routing
var router = new Router()

router.map({
  '/dashboard': {
    component: Dashboard
  }
})

router.start(App, "#app")

