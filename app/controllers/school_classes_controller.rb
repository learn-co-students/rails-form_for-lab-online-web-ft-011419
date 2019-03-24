class SchoolClassesController < ApplicationController 
  def new
    @school_class = SchoolClass.new
  end
  def create
    var =SchoolClass.new( school_class_params)
  var.save
  redirect_to school_class_path(var)
  end 
      
  
  
  
  
  
  
  def school_class_params
        params.require(:school_class).permit(:title, :room_number)
  end











end  