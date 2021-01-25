class TeachersController < ApplicationController
  before_action :ensure_correct_teacher, only: [:index, :destroy]
  before_action :forbit_current_teacher, only: [:new, :create]

  def index
    @sheets = Sheet.where(date: Date.today, school_id: params[:school_id]).order(grade: :asc, my_class: :asc)
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
    @url = request.url
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

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    if @current_teacher == @teacher
      redirect_to new_school_teacher_path(@teacher.school)
    else
      redirect_to school_teachers_path(@current_teacher.school)
    end  
  end  

  
  private  

  def teacher_params
    params.require(:teacher).permit(:name, :grade, :my_class, :teacher_password).merge(school_id: params[:school_id], year: fiscal_year)
  end 
 
  
  def forbit_current_teacher
    if @current_teacher
      redirect_to school_teachers_path(@current_teacher.school)  
    end  
  end  

  def ensure_correct_teacher
    if @current_teacher == nil || @current_teacher.school.id != params[:school_id].to_i
      redirect_to root_path
    end  
  end  
  
end
