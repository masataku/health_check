class ChecksController < ApplicationController

  def new
    @check = Check.new
  end
  
  def create
    @check = Check.new(check_params)
    if @check.save
      redirect_to school_students_path(@current_student.school)
    else 
      render 'new'
    end    
  end
  
  private

  def check_params
    params.require(:check).permit(:condition_id, :symptoms_id, :opinion, :attend, :check, :breakfast, :bed_time_id, :leave_early, :late).merge(student_id: @current_student.id, sheet_id: todays_sheet_id, date: Date.today)
  end  

  def todays_sheet_id
    if sheet_today = Sheet.find_by(grade: @current_student.grade,
                                   my_class: @current_student.my_class,
                                   year: @current_student.year,
                                   date: Date.today
                                  )
      return sheet_today.id
    else
      sheet_today = @current_student.school.sheets.create(
                                 grade: @current_student.grade,
                                 my_class: @current_student.my_class,
                                 year: @current_student.year,
                                 date: Date.today
                                )                                  
      return sheet_today.id  
    end
  end  
end
