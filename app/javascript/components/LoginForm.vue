<template>
  <div>
    <form @submit.prevent="login">
      <input type="email" v-model="email" placeholder="Email">
      <input type="password" v-model="password" placeholder="Password">
      <button type="submit">Login</button>
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      email: '',
      password: ''
    };
  },
  methods: {
    login() {
      axios.post('/users/sign_in', {
        user: {
          email: this.email,
          password: this.password
        }
      })
      .then(response => {
        // ログイン成功時の処理
        console.log(response.data);
      })
      .catch(error => {
        // ログイン失敗時の処理
        console.error(error);
      });
    }
  }
};
</script>
