class TeachersController < ApplicationController

  def index
  end
  
  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.valid? && @teacher.teacher_password == @current_school.teacher_password
      @teacher.save
      session[:teacher_id] = @teacher.id
      redirect_to school_teachers_path
    else
      render 'new'
    end    
  end
  
  private 

  def teacher_params
    params.require(:teacher).permit(:name, :grade, :my_class, :teacher_password).merge(school_id: @current_school.id)
  end  
end
