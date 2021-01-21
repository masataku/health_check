class TeachersController < ApplicationController

  def index
    @sheets = Sheet.where(date: Date.today).order(grade: :asc, my_class: :asc)
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
  
  def new
    @school = School.find(params[:school_id])
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.valid? && @teacher.teacher_password == @teacher.school.teacher_password
      @teacher.teacher_password = "correct"
      @teacher.save
      session[:teacher_id] = @teacher.id
      redirect_to school_teachers_path
    else
      render 'new'
    end    
  end

  
  private 

  def teacher_params
    params.require(:teacher).permit(:name, :grade, :my_class, :teacher_password).merge(school_id: params[:school_id], year: fiscal_year)
  end 
  
  
end
