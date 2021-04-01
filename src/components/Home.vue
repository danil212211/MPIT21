<template>
<b-container fluid>
  <b-row class="first text-center">
    <b-col cols="12">
    <b-img fluid :src="require('../assets/logo3.png')"></b-img>
    <h1>Курсы и тесты для сотрудников 
    </br>
    <small>С использованием уникальной системы SmartTesting</small>
    </h1>
    </b-col>
    <b-col sm="12"  md="6" >
    <b-button v-on:click="$router.push('login')" class="button-courses first-btn">
    <p> Войти по ключу</p>
    </b-button ></b-col>
    <b-col sm="12" md="6" >
    <b-button class="button-courses first-btn"> 
    <p>Смотреть планы</p></b-button></b-col>
  </b-row>

    <b-row class="second">
    <b-col  cols="12">

    <h1>Уникальность сервиса
    </h1>
    </b-col>

    <b-col sm="12" md="4">
      <b-card
      class="card-first"
    title="Smart testing"
  >
    <b-card-text>
Умный бот, обеспечивающий уникальностьсозданных ранее тестов путем внесенияправок в тестирование
    </b-card-text>
    </b-card>

  </b-col>
    <b-col sm="12" md="4">
      <b-card
            class="card-first"
    title="CoursesCreator"

  >
    <b-card-text>Удобный редактор курсов, в котором естьдостаточно простой и удобный функционал
    </b-card-text>
  </b-card>
  </b-col>

    <b-col sm="12" md="4">
      <b-card
            class="card-first"
    title="Smart testing"
  >
    <b-card-text>
Умный бот, обеспечивающий уникальностьсозданных ранее тестов путем внесенияправок в тестирование
    </b-card-text>
    </b-card>
    </b-col>
  </b-row>
  <b-row class="third">

  </b-row>
</b-container> 

 
</template>
<script>
export default {
  name: 'home',
  data () {
    return {
    } 
  }
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1{
 font-size: 4em;

}
h2{
  font-size: 4em;

}
.first{
background:url(require("./assets/first.png")) ;
margin-bottom:100px;
}
.card-first{
  height:250px;
  margin-bottom:50px;
  border-radius: 20px;
box-shadow:  0 20px 40px rgba(0, 0, 0, .11);
}
.button-courses{
  background-color: #572bd9;
border-radius: 9px;
border: 1px solid #572bd9;
overflow: hidden;
min-width:200px;
min-height:50px; 
}
.first-btn{
  margin-bottom:20px;
}
</style>
