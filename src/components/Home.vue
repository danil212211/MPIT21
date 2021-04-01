<template>
<b-container fluid>
<img class="first-circle" src="@/assets/first.png">
  <b-row>
    <b-col cols="12">
    <p>Курсы и тесты для сотрудников
    </br>
    <small>С использованием уникальной системы SmartTesting</small>
    </p>
    </b-col>
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
p{
  font-size: 33px;
}
.first-circle{
left:0;
top:0;
  position:absolute;
  width:100%;
  object-fit:cover;


}
</style>
