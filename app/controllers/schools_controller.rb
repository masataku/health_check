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
    unless @current_school.authenticate(school_params[:password]) && @current_school.email == school_params[:email]
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
    
  end

  def login_form
    @school = School.new
  end  
  
  def login
    if @school = School.find_by(email: school_params[:email])
      if @school.authenticate(school_params[:password])
        session[:school_id] = @school.id
        redirect_to school_path(@school)
      else
        render 'login_form'
      end
    else
      render 'login_form'    
    end    
  end  

  def logout
    session[:school_id] = nil
    redirect_to root_path
  end  
  
  private

  def school_params 
    params.require(:school).permit(:school_name, :email, :password, :password_confirmation, :teacher_password, :student_password)
  end  
end
