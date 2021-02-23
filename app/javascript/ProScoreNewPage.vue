<template>
  <form @submit.prevent="createProScore">
    <div v-if="errors.length != 0">
      <ul v-for="e in errors" :key="e">
        <li><font color="red">{{ e }}</font></li>
      </ul>
    </div>
    <div>
      <label>サーブコース</label>
      <input v-model="pro_score.serve_course" type="number">
    </div>
    <div>
      <label>1が得点した技術</label>
      <input v-model="pro_score.pro_user1_point_skill" type="number">
    </div>
    <div>
      <label>2が得点した技術</label>
      <input v-model="pro_score.pro_user2_point_skill" type="number">
    </div>
    <div>
      <label>ラリーカウント</label>
      <input v-model="pro_score.rally_count" type="number">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      pro_score: {
        set: '',
        point: '',
        serve_course: '',
        pro_user1_point_skill: '',
        pro_user2_point_skill: '',
        rally_count: ''
      },
      errors: ''
    }
  },
  methods: {
    createProScore: function() {
      axios
        .post('/api/v1/pro_scores', this.pro_score)
        .then(response => {
          let e = response.data;
          this.$router.push({ name: 'ProScoreNewPage', params: { id: e.id } });
        })
        .catch(error => {
          console.error(error);
          if (error.response.data && error.response.data.errors) {
            this.errors = error.response.data.errors;
          }
        });
    }
  }
}
</script>

<style scoped>
</style>