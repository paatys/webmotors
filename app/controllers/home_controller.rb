class HomeController < ApplicationController
  before_filter :get_brands, only: [:index]
  def index
    @makes = Make.all
  end

  private
  def get_brands
    Webmotors::GetBrandsService.get
  end
end
