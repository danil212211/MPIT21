<template>
<b-container fluid>
            <ul>
            {{this.Id}}
                <li v-for="(p, index) in questions" :key="index">
                <p v-if="questions[index].VALUE!=''">{{questions[index].VALUE}}</p>
            
                <input v-model="p.userAnswer" v-if="p.VALUE!=''" placeholder="Ответ">
                </li>
            </ul>
            <button v-on:click="showResults()">Ответить и просмотреть результат</button>
            
</b-container> 

 
</template>
<script>
export default {
  name: 'lookTest',
  data () {
    return {
    	Id: this.courseId,
    	questions:[],
    	points:0
    }
  },
  mounted() {
                this.$axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';	
                this.$axios.post('/api/getQuestions.php',
                {
                courseId:this.Id
                }
                )
                    .then(response=>(this.questions = response.data)
                    )
                    .catch(function (error) {
                        console.log(error);
                    });
  },
  props: {
  courseId: String,
},
methods:{
	showResults(){
	var ol=0;
	           for(let i=0;i<this.questions.length;i++){
	           console.log(this.questions[i].userAnswer);
	           if (this.questions[i].userAnswer==this.questions[i].ANSWER) {ol++;}
	           console.log(this.questions[i].ANSWER);
	           }
	           console.log("Ваш результат - "+ol+"/"+this.questions.length);
	}
}
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
