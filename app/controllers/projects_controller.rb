class ProjectsController < ApplicationController

    def index
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params)
        if @project.valid?
            redirect_to projects_path
        else
            render :new
        end
    end


    private

    def project_params
        params.require(:project).permit(:title, :synopsis, :owner_id, :deadline)
    end
end
