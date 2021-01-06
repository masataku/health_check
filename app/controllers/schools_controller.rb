class SchoolsController < ApplicationController
  def index

  end

  def show 
    @school = School.find(params[:id])
  end  

  def new
    @school = School.new
  end
  
  def create
    @school = School.new(school_params)
    if @school.valid?
      @school.save
      session[:school_id] = @school.id
      redirect_to school_path(@school)
    else
      render 'new'
    end    
  end

  def edit
    @school = School.find(params[:id])
    unless @school.authenticate(school_params[:password]) && @school.email == school_params[:email]
      render 'confirm'
    end  
  end  

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to school_path(@school)
    else
      render 'edit'
    end    
  end  

  def confirm
    @school = School.find(params[:id])
  end

  def login_form
  end  
  
  def login
  end  
  
  private

  def school_params 
    params.require(:school).permit(:school_name, :email, :password, :password_confirmation, :teacher_password, :student_password)
  end  
end
