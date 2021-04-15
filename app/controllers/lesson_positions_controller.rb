class LessonPositionsController < ApplicationController

  def new
    @yoga_positions = YogaPosition.all
    @lesson_plan = LessonPlan.find(params[:lesson_plan_id])
    @lesson_position = LessonPosition.new
  end

  def create
    @lesson_plan = LessonPlan.find(params[:lesson_plan_id])
    @yoga_position = YogaPosition.find(params[:lesson_position][:yoga_position_id])
    @lesson_position = LessonPosition.create(lesson_position_params)
    @lesson_position.lesson_plan = @lesson_plan
    @lesson_position.yoga_position = @yoga_position
    if @lesson_position.save
      redirect_to lesson_plan_path(@lesson_plan)
    else
      render :new
    end
  end

  private

  def lesson_position_params
    params.require(:lesson_position).permit(:lesson_plan, :yoga_position_id)
  end
end
