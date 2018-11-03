class StudentsController < ApplicationController

  def index
    @students = Student.all # model // view is implied
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id]) # find what u wanna edit
  end


  def update
    @student = Student.find_by(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student) # the show page
  end


end
