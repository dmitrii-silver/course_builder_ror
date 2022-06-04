class UnitsController < ApplicationController
  before_action :set_unit, only: [:destroy, :update, :edit, :create, :new, :show]

  def show
    @unit = @course.units.find(params[:id])
  end

  def index
  end

  def new
    @unit = Unit.new
  end
  
  def create
    @unit = @course.units.build(unit_params)
    @unit.save
    if @unit.save
      redirect_to course_path(@course)
    else
      render 'new'
    end
  end

  def edit    
  end

  def update
    @unit = @course.units.update(unit_params)
    
    redirect_to course_path(@course)
  end

  def destroy    
    @unit = @course.units.find(params[:id])
    if @unit.present?
      @unit.destroy
    end
    redirect_to course_path(@course)
  end

  private

  def set_unit
    @course = Course.find(params[:course_id])
  end

  def unit_params
    params.permit(:name, :position, :body)
  end
end