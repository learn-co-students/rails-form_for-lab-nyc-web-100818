class StudentsController < ApplicationController
#new, create, show, edit, and update

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end


  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student)
  end
end
