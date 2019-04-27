class CompletionsController < ApplicationController
  def create
    if todo.completed?
      todo.incomplete!
    else
      todo.complete!
    end
    redirect_to todos_path
  end
  
  private
  
  def todo
    todo = current_user.todos.find(params[:todo_id])
  end
end