class CoursesController < ApplicationController
  def index
    @courses=Course.all
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.create(course_params)

    redirect_to course_path(@course)
  end

  def update
  end

  def destroy
  end

  private

  def course_params    
    params.require(:course).permit(:name, :volume, :annotation,
                               :description_text)
  end
end
