class StudentsController < ApplicationController
  before_action :is_fiscal_year?
  before_action :forbit_logout_student, only: [:index]
  before_action :forbit_current_student, only: [:new, :create]
  def index
    
  end  
  
  def new
    @school = School.find(params[:school_id])
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid? && @student.student_password == @student.school.student_password && Student.find_by(grade: @student.grade, my_class: @student.my_class, number: @student.number, year: @student.year) == nil
      @student.student_password = "correct"
      @student.save
      session[:student_id] = @student.id
      redirect_to school_students_path(@student.school)
    else
      render 'new'
    end    
  end

  def destroy
    session[:student_id] = nil
    redirect_to new_school_student_path
  end  
  
  private

  def student_params
    params.require(:student).permit(:student_password, :first_name, :last_name, :first_name_kana, :last_name_kana, :grade, :my_class, :number).merge(school_id: params[:school_id], year: fiscal_year)
  end 

  def is_fiscal_year? 
    if @current_student != nil
      if @current_student.year != fiscal_year
        session[:student_id] = nil
      end 
    end  
  end 
  
  def forbit_logout_student
    @school = School.find(params[:school_id])
    if @current_student == nil
      redirect_to new_school_student_path(@school)  
    end  
  end

  def forbit_current_student
    if @current_student 
      @school = School.find(params[:school_id])
      redirect_to school_students_path(@school)
    end  
  end
  
end
