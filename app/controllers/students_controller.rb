class StudentsController < ApplicationController
  def index 
    @students = Student.all
  end 

  def new  
    @student = Student.new 
  end 

  def create 
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to students_path
  end 

  def show  
    @student = find_student
  end 

  def edit  
    @student = find_student
  end 

  def update 
    @student = find_student
    @student.update(student_params(:first_name, :last_name)) 
    redirect_to student_path
  end 

  private 
  def student_params(*args)
    params.require(:student).permit(*args)
  end 

  def find_student
    Student.find_by(id: params[:id]) 
  end 
end 
