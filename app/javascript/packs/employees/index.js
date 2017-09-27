import Vue from 'vue/dist/vue.esm.js'
import App from '../app.vue'
import axios from 'axios';

new Vue({
  el: '#employees',
  data: {
    employeeInfo: {},
  },
  created: function() {
    alert('created!')
    axios.get(`/employees`)
      .then(res => {
        console.log(res.data)
        // this.employeeInfo = res.data;
      });
  },
  methods: {
    setEmployeeInfo(id){
      axios.get(`/employees/${id}`)
        .then(res => {
          console.log(res.data)
          this.employeeInfo = res.data;
        });
    },
    updateEmployee(id) {
      alert('update!')
      // axios.put(`/employees/${id}`, {
      //   employee: { email: 'hoge@example.com' }
      // })
      // .then(res => {
      //   console.log(res.data)
      // })
    }
  }
});
