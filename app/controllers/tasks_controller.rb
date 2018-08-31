class TasksController < ApplicationController
	def index
	 	@task = Task.all
	end
	def create
		@task = Task.new(task_params)
		@task.save
	end

		
	private
	def task_params
		params.require(:task).permit(:name, :desc)
	end
end
