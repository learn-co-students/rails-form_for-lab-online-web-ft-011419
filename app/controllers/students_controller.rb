class StudentsController < ApplicationController 
  def new
   @student= Student.new
  end

  
  
  def create
    var =Student.new(student_params)
  var.save
  redirect_to student_path(var)
  
  end 
  def show
    
  end




#params 
  def student_params
    params.require(:student).permit(:first_name, :last_name)
end

end