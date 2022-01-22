class V1::WantsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    wants = user.wants.all
    render json: wants
  end

  def create
    user = User.find(params[:user_id])
    want = user.wants.build(want_params)
    if want.save
      render json: want
    else
      render json: want.errors
    end
  end

  def destroy
    want = Want.find(params[:id])
    if want.destroy
      render json: want
    end
  end

  private

  # ストロングパラメーターの設定
  def want_params
    params.require(:want).permit(:title)
  end
end
