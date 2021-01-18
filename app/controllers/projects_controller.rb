class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def dashboard
    @project = Project.new
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.create(name: params[:name], description: params[:description], starting_date: params[:starting_date], do_date: params[:do_date], state: params[:state])
    @projects = Project.all 
    render :dashboard
    
  end

end
