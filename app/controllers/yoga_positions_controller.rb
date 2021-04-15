class YogaPositionsController < ApplicationController
   def index
    @yoga_positions = YogaPosition.all
  end

  def show
    @yoga_position = YogaPosition.find(params[:id])
  end

  def new
    @yoga_position = YogaPosition.new
  end

  def create
    @yoga_position = YogaPosition.create(yoga_position_params)
    if @yoga_position.save
      redirect_to yoga_position_path(@yoga_position)
    else
      render :new
    end
  end

  def edit
    @yoga_position = YogaPosition.find(params[:id])
  end

  def update
    @yoga_position = YogaPosition.find(params[:id])
    @yoga_position.update(yoga_position_params)
    redirect_to yoga_positions_path
  end

private

  def yoga_position_params
    params.require(:yoga_position).permit(:name, :description, :duration, :good_for, :photo)
  end
end

