import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import signup from '@/components/signup'
import login from '@/components/login'
import userHome from '@/components/userHome'
import courseCreator from '@/components/courseCreator'
Vue.use(Router)
/* eslint-disable */
export default new Router({ 
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
	
	{
	  path: '/login',
	  name: 'login',
	  component : login
	},
	{
	  path: '/signup',
	  name: 'signup',
	  component : signup
	},
	{
	  path: '/userHome',
	  name: 'userHome',
	  component: userHome
	},
	{
	  path: '/createCourse',
	  name: 'courseCreator',
	  component : courseCreator
	}
  ]
}) 
