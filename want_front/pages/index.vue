<template>
  <div v-if="user">
    <p>名前：{{user.name}}</p>
    <AddTodo @submit="addTodo" />
    <TodoList :todos="todos" />
  </div>
</template>

<script>
  import AddTodo from "@/components/AddTodo";
  import TodoList from "@/components/TodoList";
  import axios from "@/plugins/axios";

  export default {
    components: {
      AddTodo,
      TodoList,
    },
    data() {
      return {
        todos: [],
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
</style>
