class HomeController < ApplicationController
  def index
  	@products = Shoppe::Product.active.featured.includes(:product_category, :variants)
    # @products = @products.group_by(&:product_category)
  end
end
