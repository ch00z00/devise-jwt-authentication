import { createApp } from 'vue';
import LoginForm from '../components/LoginForm.vue';

const app = createApp({
  components: {
    LoginForm
  }
});

app.mount('#app');
