class SheetsController < ApplicationController
  before_action :ensure_correct_teacher
  def show
    @sheet = Sheet.find(params[:id])
    @students = Student.where(grade: @sheet.grade, my_class: @sheet.my_class, year: @sheet.year, school_id: @sheet.school.id).order(number: :asc)
    @checks = @sheet.checks
  end

  private 

  def ensure_correct_teacher
    if @current_teacher == nil || @current_teacher.school.id != params[:school_id].to_i
      redirect_to root_path
    end  
  end  
end
