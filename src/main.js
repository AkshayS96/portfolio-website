import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import vuetify from "./plugins/vuetify";
import VuePageTransition from "vue-page-transition";

Vue.config.productionTip = false;

// Adding library for transition
Vue.use(VuePageTransition);

// Vue config object with router, store and vuetify css library
new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount("#app");
