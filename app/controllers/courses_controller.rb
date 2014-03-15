class CoursesController < ApplicationController
  def index
		@courses = Course.all
		respond_to do |format|
			format.html
			format.json { render json: @courses }
		end
  end

  def new
  end

  def create
  end

  def show
		@course = Course.find(params[:id])
		respond_to do |format|
			format.html
			format.json { render json: @course }
		end
  end

  def edit
  end

  def update
  end

  def delete
  end

	def course_params
		params.require(:course).permit(:name, :address, :city, :state, :zip, :description, :number_of_holes)
	end
end
