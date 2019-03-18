class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.create(project_params)
    redirect_to @project
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def destroy

    @project = Project.find(params[:id])
    @project.destroy

    # "projects/#{@project.id}" == "/projects/"
    #     "projects/nil"
    # # redirect_to @project

    redirect_to projects_path

  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
