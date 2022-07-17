class UnitsController < ApplicationController
  before_action :set_course, only: [:destroy, :update, :edit, :create, :new, :show]
  before_action :set_unit, only: [:destroy, :update, :edit, :show]

  def show
  end

  def new
    @unit = Unit.new
  end
  
  def create
    @unit = @course.units.build(unit_params)
    @unit.save
    if @unit.save
      flash[:success] = "Module created!"
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @unit.update(unit_params)
      flash[:success] = "Module updated!"
      redirect_to course_path(@course)
    else
      render :edit
    end
  end

  def destroy
    if @unit.present?
      @unit.destroy
      flash[:success] = "Module deleted!"
    end
    redirect_to course_path(@course)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_unit
    @unit = @course.units.find(params[:id])
  end

  def unit_params
    params.require(:unit).permit(:name, :position, :body)
  end
end
