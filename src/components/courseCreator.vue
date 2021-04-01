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

                    <input required type="text" class="inpQuestion" v-model="input.questionValue" v-if="inputsQuestion[index].type=='Question'" placeholder="Вопрос"> <br>
                    <!-- <p v-if="inputsQuestion[index].type=='Question'"> {{input.questionValue}} </p> -->
                    <input required type="text" class="inpQuestion" v-model="input.answer" v-if="inputsQuestion[index].type=='Question'" placeholder="Ответ"> <br>
                    <input required type="text" class="inpQuestion" v-model="input.lessonValue" v-if="inputsQuestion[index].type=='Lesson'" placeholder="Урок"> <br>

                    <!-- <p v-if="inputsQuestion[index].type=='Question'> {{input.answer}} </p> -->
                    <button @click="deleteRow(index)">Удалить</button>
                </li>
            </ul>
            <button @click="addRow">Добавить вопрос</button>
            <button @click="addRowLesson">Добавить Урок</button>
            <button @click="addQuestions">Готово</button>
        </div>
        <p> Вопросы: {{questions}} </p>
        <p> Ответы: {{answers}} </p>
        <p> Уроки: {{lessons}} </p>
        <button @click="sendIdentity">Отправить</button>

        <div> {{message}} </div>
    </div>
</template>

<script>

export default {
    data(){
        return{
            courseName: "",
            questions: [],
            answers: [],
            lessons: [],
            inputsQuestion:[],
            message: ""
        }
    },
            mounted() {
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
        .then ( newEditor => {
        editor=newEditor;
        })
            .catch( error => {
                console.error( error );
            } );

        },
    methods:{ 
        addNameQuest(){
            document.querySelector("#qName").setAttribute("disabled", "disabled")
        },
        addRow() {
            this.inputsQuestion.push({
                questionValue: '',
                answer: '',
                type:'Question'
            })
        },
        addRowLesson() {
            this.inputsQuestion.push({
                lessonValue: '',
                type:'Lesson'
            })

        },
        deleteRow(index) {
            this.inputsQuestion.splice(index,1)
            this.questions.splice(index)
            this.answers.splice(index)
        },
        addQuestions(){
        this.questions=[];
        this.answers=[];
        this.lessons=[];
           for(let i=0;i<this.inputsQuestion.length;i++){
           if (this.inputsQuestion[i].questionValue!=null) {
                this.questions.push(this.inputsQuestion[i].questionValue)
            }
            if (this.inputsQuestion[i].answer!=null) {
                this.answers.push(this.inputsQuestion[i].answer)
            }
            if (this.inputsQuestion[i].lessonValue!=null) {
                this.lessons.push(this.inputsQuestion[i].lessonValue)
            }
            }
              
        },
        sendIdentity: async function() {
            var param = {
                    courseName: this.courseName,
                    questions: this.questions,
                    answers: this.answers,
                    lessons:this.lessons
                    //inputsQuestion: this.inputsQuestion,
                    //message: this.message

            };
            this.$axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
                this.$axios.post('/api/addCourse.php',param)
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