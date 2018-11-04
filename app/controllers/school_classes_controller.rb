class SchoolClassesController < ApplicationController

  def new
    @school_class = School_Class.new
  end

  def show
    @school_class = school_class.find_by(id: params[:id])
  end

  def edit
    @school_class = School_Class.find_by(id: params[:id])
  end

  def create
  	@school_class = School_Class.create(params.require(:school_class))
  	redirect_to school_class_path(@school_class)
  end
  		 
  def update
    @school_class = School_Class.find_by(params[:id])
  	@school_class.update(params.require(school_class))
  	redirect_to school_class_path(@school_class)
  end

end
