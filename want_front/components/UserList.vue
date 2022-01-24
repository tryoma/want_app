<template>
  <v-card
    elevation="3"
    outlined
    shaped
    tile
  >
    <v-card-title>
      {{ muser.name }}
      <v-spacer></v-spacer>
      <!-- <v-text-field v-model="search" label="Search" single-line hide-details></v-text-field> -->
    </v-card-title>
    <!-- <v-data-table :headers="headers" :items="users" :search="search"></v-data-table> -->
  </v-card>
</template>

<script>
export default {
  props: ["muser"],
  data() {
    return {
      search: "",
      headers: [
        {
          text: "タイトル",
          align: "left",
          sortable: false,
          value: "name"
        }
      ]
    };
  }
};
</script>

<style>
</style>
