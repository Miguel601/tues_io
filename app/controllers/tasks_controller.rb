class TasksController < ApplicationController

    def new
        @task = Task.new
        @previous_url = request.referrer.split('/')[4].to_i
    end

    def create
        @task = Task.create(task_params)
        if @task.valid?
            redirect_to project_path(task_params[:project_id])
        else
            render :new
        end
    end

    private

    def task_params
        params.require(:task).permit(:description, :complete, :user_id, :project_id)
    end
end
