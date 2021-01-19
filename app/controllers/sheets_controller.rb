class SheetsController < ApplicationController
  def show
    @sheet = Sheet.find(params[:id])
    @students = Student.where(grade: @sheet.grade, my_class: @sheet.my_class, year: @sheet.year, school_id: @sheet.school.id).order(number: :asc)
  end
end
