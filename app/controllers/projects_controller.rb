class ProjectsController < ApplicationController

  def new
    @portfolio = Portfolio.find(params[:portfolio_id])
    @project = @portfolio.projects.build
  end

  def create
  end
end
