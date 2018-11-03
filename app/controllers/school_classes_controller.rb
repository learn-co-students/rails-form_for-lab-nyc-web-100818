class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all # model, view is implied
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    # don't need .save with create only with .new
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id]) # find what u wanna edit
  end


  def update
    @school_class = SchoolClass.find(params[:id]) # find what u want to update
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

end
