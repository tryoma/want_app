class V1::TodosController < ApplicationController
  def index
    schedule = Schedule.find(params[:schedule_id])
    todos = schedule.todos.all
    render json: todos
  end

  def create
    schedule = Schedule.find(params[:schedule_id])
    todo = schedule.todos.build(todo_params)
    if todo.save
      render json: todo
    else
      render json: todo.errors
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    if todo.destroy
      render json: todo
    end
  end

  private

  # ストロングパラメーターの設定
  def todo_params
    params.require(:todo).permit(:title, :detail, :active, :schedule_id)
  end
end
