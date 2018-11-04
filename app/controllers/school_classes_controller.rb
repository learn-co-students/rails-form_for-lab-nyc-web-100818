class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def index
    @school_classes = SchoolClass.all
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :description))
    @school_class.save
    redirect_to @school_class
  end

  def show
    @school_class = find_schoolclass
  end

  def edit
    @school_class = find_schoolclass
  end

  def update
    @school_class = find_schoolclass
    @school_class.update(params.require(:school_class).permit(:title, :description))
    redirect_to @school_class
  end



private

def schoolclass_params(*args)
  params.require(:schoolclass)
  @school_class.update(params.require(:school_class).permit(:title, :description))
end

def find_schoolclass
  SchoolClass.find_by(id: params[:id])
end



end
