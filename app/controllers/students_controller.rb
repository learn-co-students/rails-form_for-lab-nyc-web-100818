class StudentsController < ApplicationController

    def new
      @student = Student.new
    end

    def index
      @students = Student.all
    end

    def create
      @student = Student.create(params.require(:student).permit(:first_name, :last_name))
      redirect_to @student
    end

    def show
      @student = find_student
    end

    def edit
      @student = find_student
    end

    def update
      @student = find_student
      @student.update(params.require(:student).permit(:first_name, :last_name))
      redirect_to @student
    end



  private

  def find_student
    Student.find_by(id: params[:id])
  end

end
