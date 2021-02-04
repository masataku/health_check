class SchoolsController < ApplicationController
before_action :ensure_correct_school, only: [:show, :confirm, :edit, :update]
before_action :forbit_current_school, only: [:new, :create, :login_form, :login]
before_action :forbit_current_student

  def index
    @schools = School.all
  end

  def show 
    @school = School.find(params[:id])
    @fiscal_year = fiscal_year
  end  

  def new
    @school = School.new
  end
  
  def create
    @school = School.new(school_params)
    if @school.valid?
      @school.save
      session[:school_id] = @school.id
      redirect_to school_path(@school), notice: "学校が作成できました"
    else
      render 'new'
    end    
  end

  def edit
    @school = School.find(params[:id])
    unless @current_school.authenticate(school_params[:password]) && @current_school.email == school_params[:email] && school_params[:password] == school_params[:password_confirmation]
      render 'confirm'
    end  
  end  

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to school_path(@school), notice: "編集しました"
    else
      render 'edit'
    end    
  end  

  def confirm
    
  end

  def login_form
    
  end  
  
  def login
    if @school = School.find_by(email: school_params[:email])
      if @school.authenticate(school_params[:password])
        session[:school_id] = @school.id
        redirect_to school_path(@school), notice: "ログインしました"
      else
        redirect_to login_form_schools_path, notice: "メールアドレスまたはパスワードが間違っています"
      end  
    else
      redirect_to login_form_schools_path, notice: "メールアドレスまたはパスワードが間違っています"
    end  
  end  

  def logout
    session[:school_id] = nil
    redirect_to root_path, notice: "ログアウトしました"
  end  
  
  private

  def school_params 
    params.require(:school).permit(:school_name, :head_teacher, :email, :password, :password_confirmation, :teacher_password, :student_password)
  end 
  
  def ensure_correct_school
    if @current_school == nil || @current_school.id != params[:id].to_i
      redirect_to root_path
    end  
  end

end
