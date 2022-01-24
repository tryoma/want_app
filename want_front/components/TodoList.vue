<template>
  <v-card>
    <v-card-title>
      {{ user }}
      <v-spacer></v-spacer>
      <!-- <v-text-field v-model="search" label="Search" single-line hide-details></v-text-field> -->
    </v-card-title>
    <!-- <v-data-table :headers="headers" :items="todos" :search="search"></v-data-table> -->
  </v-card>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'nuxt-property-decorator'

interface Todo {
  id: number
  title: string
}

@Component({
})
export default class TodoList extends Vue {
  @Prop() public todo: Todo
  mounted() {
    // コンポーネントがマウントされたときの処理
  }
  beforeDestroy() {
    // コンポーネントが破棄される直前の処理
  }
  // search: "";
  // headers: [
  //   {
  //     text: "タイトル",
  //     align: "left",
  //     sortable: false,
  //     value: "title"
  //   },
  //   { text: "ユーザー名",
  //     value: "username"
  //   }
  // ];

  get user() {
    return this.todo;
  }

  onClick() {
    console.log("test");
  }
};
</script>

<style>
</style>
