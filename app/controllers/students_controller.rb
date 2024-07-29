class StudentsController < ApplicationController
    # student actions go here
    before_action :set_student, only: %i[show edit update destroy]

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
            redirect_to students_path, notice: 'Student has been created successfully!'
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        # update the record in the database
        if @student.update(student_params)
            # if updated, go to students list
            redirect_to student_path(@student), notice: 'Student has been updated successfully!'
        else
            # else stay in edit page
            render :edit
        end
    end

    def destroy        
        # destroy the record and redirect
        @student.destroy
        redirect_to students_path, notice: 'Student has been destroyed successfully!'
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone_number, :address, :date_of_birth, :contact_number,:grade)
    end

    def set_student
        # find the record
        @student = Student.find(params[:id])
    end

end