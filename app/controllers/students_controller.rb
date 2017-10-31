class StudentsController < ApplicationController
  	def index
    	@students = Student.all
  	end
	def new
	    @student = Student.new
	end
	def show
		@student = Student.find(params[:id])
    end
	def create
	    @student = Student.new(student_params)    # Not the final implementation!
		  if @student.save
	      		@students = Student.all
	      		render 'index'
	      else
	      render 'new'
	      end
  	end

	
  	def edit
	    @student = Student.find(params[:id])
  	end
  	def update
	    @student = Student.find(params[:id])
	    if @student.update_attributes(student_params)
	      flash[:success] = "Profile updated"
	      @students = Student.all
	      render 'index'
	    else
	      render 'edit'
	    end
	end
	def destroy
    	@student = Student.find(params[:id]).destroy
    	flash[:success] = "student deleted"
    	redirect_to @student
  	end

  	private

    def student_params
      params.require(:student).permit(:name, :email,
                                   :gender, :address, :country, :passward)
    end
  
end
