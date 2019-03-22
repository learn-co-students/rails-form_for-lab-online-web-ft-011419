class SchoolClassesController < ApplicationController

    def new
        @school = SchoolClass.new
    end

    def show
        @school = SchoolClass.find(params[:id])
    end

    def create
        @school = SchoolClass.new(post_params)
        @school.save
        redirect_to school_class_path(@school)
    end

    def edit
        @school = SchoolClass.find(params[:id])
    end
    
    def update
        @school = SchoolClass.find(params[:id])
        @school.update(post_params)
        redirect_to school_class_path(@school)
    end

    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end

end