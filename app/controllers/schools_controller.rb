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
      redirect_to school_path(@school)
    else
      render 'new'
    end    
  end

  def confirm
  end  
  
  private

  def school_params 
    params.require(:school).permit(:school_name, :email, :password, :password_confirmation, :teacher_password, :student_password)
  end  
end
