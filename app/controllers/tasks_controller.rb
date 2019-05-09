class TasksController < ApplicationController

    def new
        @task = Task.new
    end

    def create
        @task = Task.create(task_params) 
        if @task.valid?
            redirect_to project_path
        else
            render :new
        end
    end

    private

    def task_params
        params.require(:task).permit(:description, :complete, :user_id, :project_id)
    end
end
