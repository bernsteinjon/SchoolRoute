class StudentsController < ApplicationController
    def index

    end

    def new

    end

    def destroy
        @student = Student.find(params[:id])
		@student.destroy

        redirect_back fallback_location: home_parent_path
    end

    def create
        @student = Student.new(student_params);
        @student.save

        redirect_back fallback_location: home_parent_path
    end

    private def student_params
        params.require(:student).permit(:name)
    end
end
