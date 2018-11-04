class StudentsController < ApplicationController
  before_action :student_find, only: [:edit, :update, :show]

  def new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    # @student = Student.find_by(id: params[:id])
  end

  def edit
    # @student = Student.find_by(id: params[:id])
  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

  def student_find
    @student = Student.find(params[:id])
  end

end
