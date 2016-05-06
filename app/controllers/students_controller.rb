class StudentsController < ApplicationController
	before_action :get_student, only: [ :show, :edit, :update, :destroy ]

  def index
  	@students = Student.all
  end

  def show
  	# raise params.inspect
  	@school = 'NUS'
  	
  end

  def new
  	@new_student = Student.new
  end

  def create
  	# raise params.inspect
  	@new_student = Student.new(student_params)
  	if @new_student.save
  		redirect_to action: 'index'
  	else
  		render 'new'
		end
	end

  def edit
  end

  def update
  	if @stu.update_attributes(student_params)
  		redirect_to action: 'index'
  	else
  		render 'edit'
		end
	end

	def destroy
  	@stu.destroy
  	redirect_to action: 'index'
	end


  private

	def student_params
	  params.require(:student).permit(:name, :year_of_study, :matric_number)
	end

	def get_student
		@stu = Student.find(params[:id])
	end
end
