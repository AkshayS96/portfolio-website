<template>
  <v-container class="projects">
    <v-row align="center" justify="center">
      <v-col align="center" justify="center">
        <h1>My Projects</h1>
      </v-col>
    </v-row>
    <v-col justify="center" v-for="(project, index) in projects" :key="index">
      <!-- <v-col v-for="project in projectRow" :key="project.id" justify="center"> -->
      <v-card class="elevation-2 d-flex flex-column" height="100%" width="100%">
        <v-card-title class="headline" v-html="project.title"> </v-card-title>
        <v-card-text v-html="project.description"> </v-card-text>
        <v-spacer></v-spacer>
        <v-card-actions>
          <v-btn
            v-for="(link, index) in project.links"
            text
            :href="link.link"
            target="_blank"
            :key="index"
          >
            {{ link.linkType }}
            <v-icon>mdi-code-greater-than</v-icon>
          </v-btn>
        </v-card-actions>
      </v-card>
      <!-- </v-col> -->
    </v-col>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      projects: [
        {
          id: 1,
          title: "<b>Coro</b>",
          description:
            "Coro - Command Bar for Custom Commands, Bookmarks, and Search",
          links: [
            {
              linkType: "Chrome",
              link:
                "https://chromewebstore.google.com/detail/coro/amjncghjhidkofkogknjbchdcakdhdld"
            },
            {
              linkType: "Product Hunt",
              link: "https://www.producthunt.com/posts/coro-2"
            }
          ]
        },
        {
          id: 2,
          title: "<b>Spaces</b>",
          description:
            "Spaces is a Chrome extension that helps you organize your browsing with multiple Spaces and folders. Save, manage, and restore your tabs efficiently.",
          links: [
            {
              linkType: "Chrome",
              link:
                "https://chromewebstore.google.com/detail/spaces/lapgoimpbnppiicnjeajnekfofeikoai"
            },
            {
              linkType: "Product Hunt",
              link: "https://www.producthunt.com/products/spaces-15"
            },
            {
              linkType: "Github",
              link: "https://github.com/AkshayS96/Spaces"
            }
          ]
        },
        {
          id: 3,
          title:
            "<b>VEDL: A Novel Video Event Searching Technique Using Deep Learning</b>",
          description:
            "VEDL: A Novel Video Event Searching Technique Using Deep Learning.<br> It is a research paper that got published in springer",
          links: [
            {
              linkType: "Read",
              link:
                "https://link.springer.com/chapter/10.1007/978-981-15-0751-9_83"
            }
          ]
        },
        {
          id: 4,
          title: "<b>Command line news</b>",
          description:
            "A command line interface for reading news written in golang",
          links: [
            {
              linkType: "Github",
              link: "https://github.com/AkshayS96/news-cli-golang"
            }
          ]
        },
        {
          id: 5,
          title: "<b>JavaFX Media Player</b>",
          description: "A media player written in java using vlcj library",
          links: [
            {
              linkType: "Github",
              link: "https://github.com/AkshayS96/javafxVideoPlayer"
            }
          ]
        }
      ]
    };
  }
};
</script>

<style></style>
