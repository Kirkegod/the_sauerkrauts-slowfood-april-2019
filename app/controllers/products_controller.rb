class ProductsController < ApplicationController
  def index
    @categories = Category.new
  end

  def new
    @products = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @product.update(category: find_category)
    if @product.save
      redirect_to products_path
    else
      @categories = Category.all
      render 'new'
    end
  end


  private
    def products_params
      params.require(:product).permit(:name, :description, :price)
    end
  
end
