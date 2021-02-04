class SheetsController < ApplicationController
  before_action :ensure_correct_teacher
  before_action :forbit_current_student
  before_action :ensure_correct_teacher

  def index
    @sheets = Sheet.where(school_id: params[:school_id], date: params[:date]).order(grade: :asc, my_class: :asc)
    @teachers = Teacher.where(school_id: params[:school_id]).order(grade: :asc, my_class: :asc)
    @teachers1 = @teachers.select do |t|
      t.grade == 1
    end  
    @teachers2 = @teachers.select do |t|
      t.grade == 2
    end  
    @teachers3 = @teachers.select do |t|
      t.grade == 3
    end  
  end  

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

  def ensure_correct_teacher
    if @current_teacher == nil || @current_teacher.school.id != params[:school_id].to_i
      redirect_to root_path
    end  
  end  
end
