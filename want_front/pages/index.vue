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
      <!-- <TodoList :todos="todos" /> -->
      <div class="test2">
        <UserList v-for="muser in manyusers"
          :muser="muser"
          :key="muser.id"
          exact
          class="test"
          />
      </div>
    </div>
  </div>
</template>

<script>
  import AddTodo from "@/components/AddTodo";
  import TodoList from "@/components/TodoList";
  import UserList from "@/components/UserList";
  import axios from "@/plugins/axios";

  export default {
    components: {
      AddTodo,
      TodoList,
      UserList
    },
    data() {
      return {
        todos: [],
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
