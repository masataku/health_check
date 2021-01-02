class SchoolsController < ApplicationController
  def index

  end

  def show 
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
  
  private

  def school_params 
    params.require(:school).permit(:school_name, :email, :password, :password_confirmation, :teacher_password, :student_pasword)
  end  
end
