import Vue from 'vue/dist/vue.esm.js'
import App from '../app.vue'
import axios from 'axios';

new Vue({
  el: '#employees',
  data: {
    emloyeeInfo: {},
  },
  methods: {
    setEmployeeInfo(id){
      axios.get(`employees/${id}`)
        .then(res => {
          console.log(res.data)
          this.employeeInfo = res.data;
        });
    }
  }
});
