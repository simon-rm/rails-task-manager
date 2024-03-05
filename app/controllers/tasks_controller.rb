class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find params[:id]
  end
  def new
    @task = Task.new
  end
  def create
    task = Task.create tasks_params
    redirect_to task_path(task)
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
