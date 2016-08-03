class ProjectsController < ApplicationController
  before_action :set_portfolio, only: [:new, :create, :edit, :show, :update]
  before_action :set_project, only: [:show, :edit, :update]

  def new
    @project = @portfolio.projects.build
  end

  def create
    @project = @portfolio.projects.build(project_params)

    if @project.save
      redirect_to @portfolio
    else
      render new_portfolio_project_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to @portfolio
  end

  private
  
  def set_project
    @project = @portfolio.projects.find(params[:id])
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :portfolio_id)
  end
end
