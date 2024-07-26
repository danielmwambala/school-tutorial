class StudentsController < ApplicationController
    # student actions go here

    def index 
        # action for fetching all the students
        @students = Student.all
    end

    def new
        # creating a new student record
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to students_path
        else
            render :new
        end
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone_number, :address, :date_of_birth, :contact_number,:grade)
    end
end