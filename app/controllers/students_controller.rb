class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
  end
  
  private

  def student_params
    params.require(:student).permit(:student_password, :first_name, :last_name, :first_name_kana, :last_name_kana, :grade, :my_class, :number)
  end  
end
