<template>
  <v-app>
    <v-app-bar app collapse>
      <v-app-bar-nav-icon @click="drawer = !drawer"
        ><v-icon>mdi-magnify</v-icon></v-app-bar-nav-icon
      >
      <!-- <v-toolbar-title ><b><router-link to="/" id="title">Akshay Solanki</router-link></b></v-toolbar-title> -->
      <!-- <v-spacer></v-spacer> -->
      <v-tooltip bottom>
        <template v-slot:activator="{ on }">
          <v-btn icon @click="changeTheme" v-on="on">
            <v-icon>
              {{ themeIcon }}
            </v-icon>
          </v-btn>
        </template>
        <span>{{ currentTheme }}</span>
      </v-tooltip>
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" absolute temporary right width="30%">
      <WebsiteSearch></WebsiteSearch>
    </v-navigation-drawer>

    <v-bottom-navigation app shift>
      <v-tooltip v-for="route in routers" :key="route.id" top>
        <template v-slot:activator="{ on }">
          <v-btn v-on="on" :to="route.link" :target="route.target">
            <span>{{ route.title }}</span>
            <v-icon>{{ route.icon }}</v-icon>
          </v-btn>
        </template>
        <span>{{ route.title }}</span>
      </v-tooltip>
    </v-bottom-navigation>

    <v-content>
      <router-view></router-view>
    </v-content>
  </v-app>
</template>

<script>
import WebsiteSearch from "./components/WebsiteSearch";
const mousetrap = require("mousetrap");

export default {
  name: "App",
  data: () => ({
    themeIcon: "mdi-weather-sunny",
    themeIconColor: "yellow",
    buttonElevation: 10,
    drawer: false,
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
    }
  },
  computed: {
    currentTheme() {
      return this.$vuetify.theme.dark ? "Dark" : "Light";
    }
  },
  mounted() {
    const self = this;
    mousetrap.bind("command+/", () => {
      self.drawer = !self.drawer;
    });
  },
  components: {
    WebsiteSearch: WebsiteSearch
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
