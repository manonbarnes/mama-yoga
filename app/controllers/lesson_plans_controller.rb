class LessonPlansController < ApplicationController
  def index
    @lesson_plans = LessonPlan.all
  end

  def show
    @lesson_plan = LessonPlan.find(params[:id])
  end

  def new
    @lesson_plan = LessonPlan.new
  end

  def create
    @lesson_plan = LessonPlan.create(lesson_plan_params)
    if @lesson_plan.save
      redirect_to lesson_plan_path(@lesson_plan)
    else
      render :new
    end
  end

  def edit
    @lesson_plan = LessonPlan.find(params[:id])
  end

  def update
    @lesson_plan = LessonPlan.find(params[:id])
    @lesson_plan.update(lesson_plan_params)
    redirect_to lesson_plan_path
  end

private

  def lesson_plan_params
    params.require(:lesson_plan).permit(:title, :description, :duration)
  end
end

