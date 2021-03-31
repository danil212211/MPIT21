<template>
    <div>
        <div class="createQuest">
            <input type="text" v-model="courseName" placeholder="Название курса" id="qName">
            <button v-on:click="addNameQuest()">Добавить</button>
            <h1 v-if="courseName!=''">Название курса - {{courseName}}</h1>
        </div>
        <div class="createQuestion" v-if="courseName!=''">
            <ul>
                <li v-for="(input, index) in inputsQuestion" :key="index">
                    <input type="text" class="inpQuestion" v-model="input.questionValue" placeholder="Вопрос"> <br>
                    <!-- <p> {{input.questionValue}} </p> -->
                    <input type="text" class="inpQuestion" v-model="input.answer" placeholder="Ответ"> <br>
                    <!-- <p> {{input.answer}} </p> -->
                    <button @click="deleteRow(index)">Удалить</button>
                </li>
            </ul>
            <button @click="addRow">Добавить вопрос</button>
            <button @click="addQuestions">Готово</button>
        </div>
        <p> Вопросы: {{quesions}} </p>
        <p> Ответы: {{answers}} </p>

        <button @click="sendIdentity">Отправить</button>

        <div> {{message}} </div>
    </div>
</template>

<script>

export default {
    data(){
        return{
            courseName: "",
            quesions: [],
            answers: [],
            inputsQuestion:[],
            message: ""
        }
    },
    methods:{ 
        addNameQuest(){
            document.querySelector("#qName").setAttribute("disabled", "disabled")
        },
        addRow() {
            this.inputsQuestion.push({
                questionValue: '',
                answer: ''
            })
        },
        deleteRow(index) {
            this.inputsQuestion.splice(index,1)
            this.quesions.splice(index)
            this.answers.splice(index)
        },
        addQuestions(){
           for(let i=0;i<this.inputsQuestion.length;i++){
                this.quesions.push(this.inputsQuestion[i].questionValue)
                this.answers.push(this.inputsQuestion[i].answer)
            }  
        },
        sendIdentity: async function() {
            var param = {
                    courseName: this.courseName,
                    quesions: this.quesions,
                    answers: this.answers,
                    //inputsQuestion: this.inputsQuestion,
                    //message: this.message

            };
            const str = JSON.stringify(param);
            this.$axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
                this.$axios.post('/sendCourse.php',str)
                    .then(function(response) {
                        console.log(response.data);
                        this.message = response.data
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
        },
    }
}
</script>

<style scoped>

</style>