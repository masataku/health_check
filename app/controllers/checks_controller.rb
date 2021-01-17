class ChecksController < ApplicationController

  def new
    @check = Check.new
  end
  
  def create
  end
  
  private

  def check_params
    params.require(:check).permit(:date, :condition_id, :symptoms_id, :opinion, :attend, :check, :breakfast, :bed_time_id, :temperature_id, :leave_early, :late).merge(student_id: @current_student.id, sheet_id: todays_sheet_id)
  end  

  def todays_sheet_id
    if sheet_today = Sheet.find_by(grade: @current_student.grade,
                                   my_class: @current_student.myclass,
                                   year: @current_student.year,
                                   date: Date.today
                                  )
      return sheet_today.id
    else
      sheet_today = Sheet.create(grade: @current_student.grade,
                                 my_class: @current_student.myclass,
                                 year: @current_student.year,
                                 date: Date.today
                                )               
      return sheet_today.id  
    end
  end  
end
