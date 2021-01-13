class TeachersController < ApplicationController

  def index
  end
  
  def new
    @teacher = Teacher.new
  end
  
  def create
  end  
end
