class V1::SchedulesController < ApplicationController
  def index
    want = Want.find(params[:want_id])
    schedules = want.schedules.all
    render json: schedules
  end

  def create
    want = Want.find(params[:want_id])
    schedule = want.schedules.build(schedule_params)
    if schedule.save
      render json: schedule
    else
      render json: schedule.errors
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    if schedule.destroy
      render json: schedule
    end
  end

  private

  # ストロングパラメーターの設定
  def schedule_params
    params.require(:schedule).permit(:title, :order, :active, :want_id)
  end
end
