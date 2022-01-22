class V1::DidsController < ApplicationController
  def index
    want = Want.find(params[:want_id])
    dids = want.dids.all
    render json: dids
  end

  def create
    want = Want.find(params[:want_id])
    did = want.dids.build(did_params)
    if did.save
      render json: did
    else
      render json: did.errors
    end
  end

  def destroy
    did = Did.find(params[:id])
    if did.destroy
      render json: did
    end
  end

  private

  # ストロングパラメーターの設定
  def did_params
    params.require(:did).permit(:title, :category, :active, :want_id)
  end
end
