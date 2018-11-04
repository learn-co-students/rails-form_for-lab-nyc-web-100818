class SchoolClassesController < ApplicationController
  before_action :school_class_find, only: [:edit, :update, :show]
  # before_action :school_class_find, only: [:edit, :update, :show]
  def new

  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  def edit
  end

  def update
     # @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def school_class_find
    @school_class = SchoolClass.find_by(id: params[:id])
  end
end
