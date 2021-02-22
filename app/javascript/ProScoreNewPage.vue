<template>
  <form @submit.prevent="createProUser">
    <div v-if="errors.length != 0">
      <ul v-for="e in errors" :key="e">
        <li><font color="red">{{ e }}</font></li>
      </ul>
    </div>
    <div>
      <label>Name</label>
      <input v-model="pro_user.name" type="text">
    </div>
    <button type="submit">Commit</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      pro_user: {
        name: ''
      },
      errors: ''
    }
  },
  methods: {
    createProUser: function() {
      axios
        .post('/api/v1/pro_users', this.pro_user)
        .then(response => {
          let e = response.data;
          this.$router.push({ name: 'ProUserNewPage', params: { id: e.id } });
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