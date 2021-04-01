<template>
<b-container fluid>
            <ul>
                <li v-for="(p, index) in courses" :key="index">
                <button v-on:click="goToCourse(courses[index].ID)">Попасть на курс номер {{p.ID}}</button>
                </li>
            </ul>
</b-container> 
</template>
<script>
export default {
  name: 'lookCourses',
  data () {
    return {
    courses: []
    }
    },
    mounted: 
    function() {
                this.$axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';	
                this.$axios.post('/api/getCourses.php')
                    .then(response=>(this.courses = response.data)
                    )
                    .catch(function (error) {
                        console.log(error);
                    });
    },
    methods:
    {
    goToCourse(id) {
    var navigate = this.$router;
    navigate.push({ name: 'completeCourse', query: { courseId:id} });

    }
    }
  }
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
