<template>
  <v-container class="projects">
    <v-row align="center" justify="center">
      <v-col align="center" justify="center">
        <h1>My Projects</h1>
      </v-col>
    </v-row>
    <v-row
      align="center"
      justify="center"
      v-for="(projectRow, index) in projects"
      :key="index"
    >
      <v-col v-for="project in projectRow" :key="project.id" justify="center">
        <v-card
          class="elevation-2 d-flex flex-column"
          min-height="200"
          max-width="380"
        >
          <v-card-title class="headline" v-html="project.title">
            <b>
              {{ project.title }}
            </b>
          </v-card-title>
          <v-card-text v-html="project.description">
            {{ project.desciption }}
          </v-card-text>
          <v-spacer></v-spacer>
          <v-card-actions>
            <v-btn text :href="project.link" target="_blank">
              {{ project.linkType }}
              <v-icon>mdi-code-greater-than</v-icon>
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      rows: 1,
      cols: 1,
      projects: [
        [
          {
            id: 1,
            title: "VEDL",
            description:
              "VEDL: A Novel Video Event Searching Technique Using Deep Learning.<br> It is a research paper that got published in springer",
            linkType: "Read",
            link:
              "https://link.springer.com/chapter/10.1007/978-981-15-0751-9_83"
          },
          {
            id: 2,
            title: "Command line news",
            description: `A command line interface for reading news written in golang

                            `,
            link: "https://github.com/AkshayS96/news-cli-golang",
            linkType: "Code"
          },
          {
            id: 3,
            title: "Live Media Streaming",
            description:
              "A Client and Server software for Live media Streaming over RTSP protocal.<br> Both client and server are written in java",
            link: "https://github.com/AkshayS96/LiveMediaStreaming",
            linkType: "Code"
          }
        ],
        [
          {
            id: 4,
            title: "JavaFX Media Player",
            description: "A media player written in java using vlcj library",
            link: "https://github.com/AkshayS96/javafxVideoPlayer",
            linkType: "Code"
          }
        ],
        []
      ]
    };
  }
};
</script>

<style></style>
