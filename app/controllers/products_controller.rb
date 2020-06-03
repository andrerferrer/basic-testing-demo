class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
  	@products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new strong_params
    @product.save ? redirect_to(@product) : render(:new)
  end

  private

  def strong_params
    params.require(:product).permit(:name, :tagline)
  end
end
