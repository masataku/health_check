class ChecksController < ApplicationController
  before_action :forbit_logout_student
  before_action :ensure_correct_student
  before_action :already_checked_today

  def new
    @check = Check.new
  end
  
  def create
    @check = Check.new(check_params)
    if @check.valid? && @current_student.checks.find_by(date: @check.date) == nil
      @check.save
      redirect_to school_students_path(@current_student.school), notice: "送信できました"
    else 
      render 'new'
    end    
  end
  
  private

  def check_params
    params.require(:check).permit(:condition_id, :symptoms_id, :temperature_id, :opinion, :attend, :check, :breakfast, :bed_time_id, :leave_early, :late, symptom_ids: []).merge(student_id: @current_student.id, sheet_id: todays_sheet_id, date: Date.today)
  end  

  def todays_sheet_id
    if sheet_today = Sheet.find_by(grade: @current_student.grade,
                                   my_class: @current_student.my_class,
                                   year: @current_student.year,
                                   date: Date.today,
                                   school_id: params[:school_id]
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

  def forbit_logout_student
    @school = School.find(params[:school_id])
    if @current_student == nil
      redirect_to new_school_student_path(@school)  
    end  
  end  

  def ensure_correct_student
    if @current_student.id != params[:student_id].to_i  
      redirect_to school_students_path(@current_student.school, @current_student)
    end  
  end

  def already_checked_today
    if Check.find_by(date: Date.today, student_id: @current_student.id)
      redirect_to school_students_path(@current_student.school, @current_student)
    end  
  end  
end
