class StudentsController < ApplicationController
  def index
  end  
  
  def new
    @school = School.find(params[:school_id])
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid? && @student.student_password == @student.school.student_password
      @student.student_password = "correct"
      @student.save
      redirect_to school_students_path(@student.school)
    else
      render 'new'
    end    
  end
  
  private

  def student_params
    params.require(:student).permit(:student_password, :first_name, :last_name, :first_name_kana, :last_name_kana, :grade, :my_class, :number).merge(school_id: params[:school_id], year: fiscal_year)
  end  

  def fiscal_year
    fiscal_year = Date.today.year
    if Date.today.month == 1..3
      return fiscal_year - 1
    else
      return fiscal_year
    end    
  end  
end
