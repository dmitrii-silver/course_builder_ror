class UnitsController < ApplicationController
  def show
    @unit = Unit.find(params[:id])
  end

  def index
  end

  def new
    @unit = Unit.new
  end
  
  def create
    @course = Course.find(params[:course_id])
    @unit = @course.units.build(unit_params)
    @unit.save
    if @unit.save
      flash[:success] = "Unit created!"
      redirect_to courses_path(@course)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @unit = Unit.find(params[:id])
    @unit.update(course_params)

    redirect_to course_path
  end

  def destroy
    @unit = Unit.find(params[:id])
    if @unit.present?
      @unit.destroy
    end
    redirect_to courses_path
  end

  private

  def unit_params
    params.permit(:name, :position, :body)
  end
end