class HolesController < ApplicationController
  def index
		@course = Course.find(params[:course_id])
		@holes = @course.holes
		respond_to do |format|
			format.html
			format.json { render json: @holes }
		end
  end

  def show
		@hole = Hole.find(params[:id])
		respond_to do |format|
			format.html
			format.json { render json: @hole }
		end
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def delete
  end
end
