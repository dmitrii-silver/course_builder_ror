class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses=Course.all
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def show
  end

  def create
    @course = Course.create(course_params)
      if @course.save
        redirect_to course_path(@course)
      else
        render 'new'
      end
  end

  def update
    @course.update(course_params)

    redirect_to course_path(@course)
  end

  def destroy
    @course.destroy

    redirect_to courses_path
  end

  private

  def course_params    
    params.require(:course).permit(:name, :volume, :annotation,
                               :description_text)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
