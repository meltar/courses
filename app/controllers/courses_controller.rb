class CoursesController < ApplicationController
  def index
		@courses = Course.all
		render json: @courses
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
