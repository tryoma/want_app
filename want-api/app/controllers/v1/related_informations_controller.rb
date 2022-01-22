class V1::RelatedInformationsController < ApplicationController
  def index
    want = Want.find(params[:want_id])
    related_informations = want.related_informations.all
    render json: related_informations
  end

  def create
    want = Want.find(params[:want_id])
    related_information = want.related_informations.build(related_information_params)
    if related_information.save
      render json: related_information
    else
      render json: related_information.errors
    end
  end

  def destroy
    related_information = RelatedInformation.find(params[:id])
    if related_information.destroy
      render json: related_information
    end
  end

  private

  # ストロングパラメーターの設定
  def related_information_params
    params.require(:related_information).permit(:title, :detail, :active, :want_id)
  end
end
