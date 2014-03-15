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
  end

  def edit
  end

  def update
  end

  def delete
  end
end
