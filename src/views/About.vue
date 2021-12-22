<template>
  <v-container class="about">
    <v-row align="center" justify="center">
      <v-col align="center" justify="center">
        <h1>My Journey Till Now<v-icon large>mdi-bus</v-icon></h1>
      </v-col>
    </v-row>
    <v-row align="center" justify="center">
      <v-timeline>
        <v-timeline-item v-for="item in timelineItems" :key="item.id" large>
          <template v-slot:icon>
            <v-avatar>
              <img :src="require('@/assets/myAvatar.svg')" />
            </v-avatar>
          </template>
          <template v-slot:opposite>
            <span>{{ item.year }}</span>
          </template>
          <v-card class="elevation-2">
            <v-card-title class="headline" v-html="item.title">{{
              item.title
            }}</v-card-title>
            <v-card-text v-html="item.description">{{
              item.description
            }}</v-card-text>
          </v-card>
        </v-timeline-item>
      </v-timeline>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      timelineItems: [
        {
          id: 8,
          year: "October 2021",
          description: "Joined <a href='https://www.amazon.com' target='_blank'>Amazon</a> as a Software Development Engineer 2 in Performance Advertising team.",
          title: 'Mumbai &nbsp; <i class="mdi mdi-airplane-takeoff"></i> &nbsp; Bangalore'
        },
        {
          id: 7,
          year: "January 2020",
          description:
            "Joined <a href='https://clevertap.com' target='_blank'>CleverTap</a> as a Software Engineer 1. Worked in multiple teams and delivered several high impact projects",
          title:
            'Gurugram &nbsp; <i class="mdi mdi-airplane-takeoff"></i> &nbsp; Mumbai'
        },
        {
          id: 6,
          year: "May 2019",
          description:
            "Joined <a href='https://shipsy.in/' target='_blank'>Shipsy</a> as software engineer. I was a part of team that was creating solutions for Shipping Industry.",
          title: 'Srinagar &nbsp; <i class="mdi mdi-train"></i> &nbsp; Gurugram'
        },
        {
          id: 5,
          year: "May 2019",
          description:
            'Graduated From <a href="http://nituk.ac.in/" target="_blank">NIT Uttarakhand</a> with a overall CGPA of <b>9.24/10</b>.',
          title: 'Graduation &nbsp; <i class="mdi mdi-school"></i>'
        },
        {
          id: 4,
          year: "July 2018",
          description:
            "Joined <a href='https://shipsy.in/' target='_blank'>Shipsy</a> as Data Science Intern for 6 months",
          title: "Data Science Intern @Shipsy"
        },
        {
          id: 3,
          year: "June 2017",
          description:
            'Joined <a href="https://www.drdo.gov.in/labs-and-establishments/instruments-research-development-establishment-irde" target="_blank">IRDE(DRDO) Dehradun</a> as a summer intern in naval systems laboratory for 2 months',
          title: "IRDE Dehradun (DRDO)"
        },
        {
          id: 2,
          year: "July 2015",
          description: "Started my graduation at NIT Uttarakhand.",
          title: 'Computer Science @NITUK<i class="mdi mdi-school"></i>'
        },
        {
          id: 1,
          year: "May 2014",
          description:
            "Completed my schooling from Kendriya Vidyalaya muzaffarnagar with <b>95.2%</b> in Class 12th",
          title: "KV Muzaffarnagar"
        }
      ]
    };
  }
};
</script>

<style scoped></style>
