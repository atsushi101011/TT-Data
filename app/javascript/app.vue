<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>ID</th>
          <th>name</th>
          <th>created_at</th>
          <th>updated_at</th>
        </tr>
        <tr v-for="e in pro_users" :key="e.id">
          <td>{{ e.id }}</td>
          <td>{{ e.name }}</td>
          <td>{{ e.created_at }}</td>
          <td>{{ e.updated_at }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      pro_users: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/pro_users.json')
      .then(response => (this.pro_users = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>