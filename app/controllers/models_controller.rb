class ModelsController < ApplicationController
  before_filter :get_models, only: [:index]
  def index
    make = Make.where(webmotors_id: models_params[:webmotors]).take
    @models = make.models
  end

  private

  def get_models
    Webmotors::GetModelsService.get models_params[:webmotors]
  end

  def models_params
    params.permit(:webmotors)
  end
end
