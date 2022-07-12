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
      flash[:success] = "Module created!"
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @unit = @course.units.find(params[:id])    
  end

  def update
    @unit = @course.units.update(unit_params)
    if @course.save
      flash[:success] = "Module updated!"
      redirect_to course_path(@course)
    else
      render :edit 
    end
  end

  def destroy    
    @unit = @course.units.find(params[:id])
    if @unit.present?
      @unit.destroy
      flash[:success] = "Module deleted!"
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