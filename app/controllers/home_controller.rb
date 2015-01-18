class HomeController < ApplicationController
  def index
  	@products = Shoppe::Product.active.featured.includes(:default_image, :product_category, :variants).root
    # @products = @products.group_by(&:product_category)
  end
end
