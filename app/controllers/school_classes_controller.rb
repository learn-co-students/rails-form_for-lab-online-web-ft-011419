class SchoolClass < ApplicationController
  
  
  def index
    @classes = SchoolClass.all
  end
  
  def new
    @class = SchoolClass.new
  end
  
  def create
    @class = SchoolClass.create(school_class
    @class.save
    
  
  
  
  
  
  
  
end
end