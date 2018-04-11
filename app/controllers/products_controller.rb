class ProductsController < ApplicationController

  def index
    @allProducts = Product.find_by_sql("SELECT * FROM products JOIN product_profiles on product_profiles.product_id = products.id")
  end

  def filter
    @allProducts = Variable.find(params[:option])
  end

  def delete
    @product = Product.find_by(params[:id]).destroy
    if @product.destroy
      redirect_to '/users/new'
    end
  end


end
