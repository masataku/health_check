class ApplicationController < ActionController::Base
  before_action :set_current_school

  def set_current_school
    @current_school = School.find_by_id(session[:school_id])
  end  
end
