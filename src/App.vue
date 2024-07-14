<template>
  <v-app>
    <!-- <v-app-bar app collapse tile>
      <v-tooltip bottom>
        <template v-slot:activator="{ on }">
          <v-btn icon @click="changeTheme" v-on="on">
            <v-icon>{{ themeIcon }}</v-icon>
          </v-btn>
        </template>
        <span>{{ currentTheme }}</span>
    
    </v-app-bar> -->

    <div class="ma-4">
      <v-tooltip bottom>
        <template v-slot:activator="{ on }">
          <v-btn
            fab
            color="outlined"
            style="
          width: fit-content;
          border-radius: 100px;
          padding: 16px;
        "
            @click="changeTheme"
            v-on="on"
          >
            <v-icon>{{ themeIcon }}</v-icon>
          </v-btn>
        </template>
        <span>{{ currentTheme }}</span>
      </v-tooltip>
    </div>

    <v-bottom-navigation app shift>
      <v-tooltip v-for="route in routers" :key="route.id" top>
        <template v-slot:activator="{ on }">
          <v-btn
            v-on="on"
            :to="route.link"
            :target="route.target"
            style="height: 100%;"
          >
            <span>{{ route.title }}</span>
            <v-icon>{{ route.icon }}</v-icon>
          </v-btn>
        </template>
        <span>{{ route.title }}</span>
      </v-tooltip>
    </v-bottom-navigation>

    <v-content>
      <!-- <transition
          :name="transitionName"
      >-->
      <vue-page-transition :name="transitionName">
        <router-view></router-view>
      </vue-page-transition>
      <!-- </transition> -->
    </v-content>
  </v-app>
</template>

<script>
export default {
  name: "App",
  data: () => ({
    themeIcon: "mdi-weather-sunny",
    themeIconColor: "yellow",
    buttonElevation: 10,
    drawer: false,
    transitionName: "fade",
    routers: [
      {
        id: 1,
        title: "Home",
        link: "/",
        icon: "mdi-home"
      },
      {
        id: 2,
        title: "About",
        link: "/about",
        icon: "mdi-account-search"
      },
      {
        id: 3,
        title: "Projects",
        link: "/projects",
        icon: "mdi-code-tags"
      }
    ]
  }),
  methods: {
    changeTheme() {
      this.themeIcon = this.$vuetify.theme.dark
        ? "mdi-weather-sunny"
        : "mdi-weather-night";
      this.$vuetify.theme.dark = !this.$vuetify.theme.dark;
      // change background here
    }
  },
  computed: {
    currentTheme() {
      return this.$vuetify.theme.dark ? "Dark" : "Light";
    }
  }
};
</script>

<style scoped>
#title {
  text-decoration: none;
  color: inherit;
}
.routerLink {
  text-decoration: none;
}
</style>
