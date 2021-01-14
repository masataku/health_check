class ApplicationController < ActionController::Base
  before_action :set_current_school
  before_action :set_current_teacher

  def set_current_school
    @current_school = School.find_by_id(session[:school_id])
  end  

  def set_current_teacher
    @current_teacher = Teacher.find_by_id(session[:teacher_id])
  end  
end
