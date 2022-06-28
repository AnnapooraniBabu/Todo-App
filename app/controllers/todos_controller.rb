class TodosController < ApplicationController
    def index
    @todo = Todo.new
    @show_data = Todo.all.map do |todolist|
      todolist
    end
    @show_data
  end
  def create
    new_todo = Todo.new(todo_params)
    if new_todo.save
      redirect_to root_path
      # render plain: "Success"
    #  render "todos/index"
    else
      render plain:"Unsuccess"
    end
  end
  # def get_data
  # puts data =  new_todo.all
  # end
  def todo_params
      params.require(:todo).permit(:task,:date_task)
  end
  def destroy
    # @delete = Todo.find(params[:id])
     @todos = Todo.find(params[:id])
     @todos.destroy
    # flash[:success] = "The to-do item was successfully destroyed."
     redirect_to root_path
  end
end
