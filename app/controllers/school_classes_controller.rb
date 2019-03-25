class SchoolClassesController < ApplicationController 
  def new
    @school_class = SchoolClass.new
  end
  def create
    var =SchoolClass.new(school_class_params)
  var.save
  redirect_to school_class_path(var)
  end 
  def show
    @school_class = SchoolClass.find(params[:id])
  end   
  def edit
    @school_class = SchoolClass.find(params[:id])
  end
  def update
    var=SchoolClass.find(params[:id])
    var.update(school_class_params)
    redirect_to  school_class_path(var)
  end
  
  
  
  
  def school_class_params
        params.require(:school_class).permit(:title, :room_number)
  end











end  