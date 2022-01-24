<template>
  <div class="">
    <div class="">
      <p>死ぬまでには。。。</p>
    </div>
    <div class="">
      <p>どんなアプリかの説明</p>
    </div>
    <div v-if="user">
      <p>ユーザーの進捗</p>
      <!-- <AddTodo @submit="addTodo" /> -->
      <TodoList v-for="(todo, i) in todos"
        :key="i"
        :todo="todo" />
      <div class="test2">
      </div>
    </div>
  </div>
</template>

<script>
  import AddTodo from "@/components/AddTodo";
  import TodoList from "@/components/TodoList";
  import axios from "@/plugins/axios";

  export default {
    components: {
      AddTodo,
      TodoList
    },
    data() {
      return {
        todos: [
          {
            id: 1,
            title: "test"
          }
        ],
        manyusers: [
          {
            name: "takubo",
            id: 1
          },
          {
            name: "kubo",
            id: 2
          }
        ]
      };
    },
    computed: {
      user() {
        return this.$store.state.auth.currentUser;
      }
    },
    created() {
    },
    methods: {
      async addTodo(title) {
        await axios.post("/v1/users", { title });
        this.todos.push({
          title
        });
      },
    },
    fetch({
      store,
      redirect
    }) {
      store.watch(
        state => state.auth.currentUser,
        (newUser, oldUser) => {
          if (!newUser) {
            return redirect("/login");
          }
        }
      );
    },
  };

</script>

<style>
.test {
  margin-bottom: 1rem;
}
</style>
