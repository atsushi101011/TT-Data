<template>
  <dl>
    <dt>ID</dt>
    <dd>{{ pro_user.id }}</dd>
    <dt>Name</dt>
    <dd>{{ pro_user.name }}</dd>
    <dt>作成</dt>
    <dd>{{ pro_user.created_at }}</dd>
    <dt>更新</dt>
    <dd>{{ pro_user.updated_at }}</dd>
  </dl>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      pro_user: []
    }
  },
  mounted () {
    axios
      .get(`/api/v1/pro_users/${this.$routes.params.id}.json`)
      .then(response => (this.pro_user = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>