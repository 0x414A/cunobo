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

// Views
var Home = require('./components/home.vue')
var Dashboard = require('./components/dashboard.vue')
var QuestionInterface = require('./components/question_interface.vue')

// Set routing
var router = new Router()

router.map({
  '/': {
    component: Home
  },
  '/student_questions/:student_question_id': {
    component: QuestionInterface
  },
  '/dashboard': {
    component: Dashboard
  }
})

router.redirect({
   '*': '/home'
})

router.start(App, "#app")
