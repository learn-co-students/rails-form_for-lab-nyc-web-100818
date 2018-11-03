class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def create
    Student.create(params.require(:student))
    redirect_to students_path
  end
  def show
    @student = Student.find_by(id: params[:id])
  end
  def edit
    @student = Student.find_by(id: params[:id])
  end
  def update
    @student = Student.find_by(id: params[:id])
    @student.update(params.require(:student))
    redirect_to @student
  end

  # private
  #   para
  # def
end
