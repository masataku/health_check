class ApplicationController < ActionController::Base
  before_action :set_current_school
  before_action :set_current_teacher
  before_action :set_current_student
  before_action :fiscal_year

  def set_current_school
    @current_school = School.find_by_id(session[:school_id])
  end  

  def set_current_teacher
    @current_teacher = Teacher.find_by_id(session[:teacher_id])
  end  

  def set_current_student
    @current_student = Student.find_by_id(session[:student_id])
  end

  def forbit_current_school
    if @current_school 
      redirect_to school_path(@current_school)
    end
  end  

  def forbit_current_teacher
    if @current_teacher
      redirect_to school_teachers_path(@current_teacher.school)  
    end  
  end  

  def forbit_current_student
    if @current_student 
      @school = School.find(params[:school_id])
      redirect_to school_students_path(@school)
    end  
  end
  
  def fiscal_year
    fiscal_year = Date.today.year
    if Date.today.month == 1 || Date.today.month == 2 || Date.today.month == 3
      return fiscal_year - 1
    else
      return fiscal_year
    end    
  end  
end
