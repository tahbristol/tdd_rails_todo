class TodosController < ApplicationController
  before_action :authenticate
  
  def index
   # binding.pry
   @todos = current_user.todos
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    current_user.todos.create(todo_params)
    #binding.pry
    redirect_to todos_path
  end
  
  private
  
  def todo_params
    params.require(:todo).permit(:title)
  end
end