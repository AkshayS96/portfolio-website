// Things I need to do in home page // 1. logo // 2. name // 3. contact
<template>
  <v-container>
    <v-row align="center" justify="center">
      <v-col cols="12">
        <v-row align="center" justify="center">
          <v-col align="center" justify="center">
            <v-img
              :src="require('@/assets/my_image.jpg')"
              aspect-ratio="1"
              class="image"
            ></v-img>
          </v-col>
        </v-row>
        <v-row>
          <v-col align="center" justify="center">
            <span class="nameTitle"
              >Hi, I'm
              <h1>Akshay Solanki</h1></span
            >
            <span><b>Software Engineer</b></span>
          </v-col>
        </v-row>
        <v-row align="center" justify="center">
          <v-col
            v-for="icon in icons"
            :key="icon.id"
            align="center"
            justify="center"
            cols="1"
          >
            <v-btn icon :href="icon.link" target="_blank">
              <v-icon>{{ icon.value }}</v-icon>
            </v-btn>
          </v-col>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>
<script>
// @ is an alias to /src
export default {
  name: "Home",
  data() {
    return {
      icons: [
        {
          id: 1,
          value: "mdi-facebook",
          type: "facebook",
          link: "https://www.facebook.com/akshay.solanki.1428"
        },
        {
          id: 2,
          value: "mdi-linkedin",
          type: "linkiden",
          link: "https://www.linkedin.com/in/akshays96/"
        },
        {
          id: 3,
          value: "mdi-github",
          type: "github",
          link: "https://github.com/AkshayS96"
        },
        {
          id: 4,
          value: "mdi-stack-overflow",
          type: "stackoverflow",
          link:
            "https://stackoverflow.com/users/8142023/akshay-solanki?tab=profile"
        },
        {
          id: 5,
          value: "mdi-gmail",
          type: "gmail",
          link: "mailto:asolanki786@gmail.com"
        }
      ]
    };
  }
};
</script>
<style scoped>
.image {
  height: 250px;
  width: 250px;
  border-radius: 50%;
  border: 2px solid;
}

.nameTitle {
  font-family: "Open Sans", sans-serif;
}
</style>
