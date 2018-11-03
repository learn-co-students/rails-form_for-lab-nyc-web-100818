class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  def new

  end
  def edit
    @school_class = SchoolClass.find(params[:id])
  end
  def create

  end
  def show
     @school_class = SchoolClass.find(params[:id])
  end
  def update
    
     @school_class = SchoolClass.find(params[:id])
     @school_class.update(params.require(:school_class))
     redirect_to @school_class
  end
end
