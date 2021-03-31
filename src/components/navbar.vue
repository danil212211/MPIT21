<template>
<b-navbar style="background-color: linear-gradient(#61b15a, #adce74)!important;" toggleable="lg" type="dark" variant="dark" fixed="top" >
    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
	
   <b-navbar-brand href="#" >MPIT21</b-navbar-brand>  
       <b-collapse id="nav-collapse" is-nav>
      <b-navbar-nav >
	  </b-navbar-nav>
	  <b-navbar-nav class="ml-auto">
	  
	  <button  v-on:click="$router.push('login')" class="btn btn-outline-light"> Выйти</button>
    </b-navbar-nav>
	</b-collapse>
</b-navbar>
</template>


<script>
export default {
  data() {
    return {
	}
	},
  methods: {
   }

}
</script>
<style>
 .navbar.navbar-dark.bg-dark{
background: linear-gradient(#61b15a, #adce74)!important;
 }
</style>
