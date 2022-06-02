class UnitsController < ApplicationController
  def show
    @unit = Unit.find(params[:id])
  end

  def index
    @units = Unit.all
  end

  def new    
  end

  def create
    @course = Course.find(3) #HARD
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
  end

  def destroy
  end

  private

  def unit_params    
    params.permit(:name, :position, :body)
  end
end