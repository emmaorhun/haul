class ProductsController < ApplicationController

  def index
    @allProducts = Product.find_by_sql("SELECT * FROM products JOIN product_profiles on product_profiles.product_id = products.id")
  end

  def filter
    @allProducts = Product.joins('INNER JOIN product_profiles ON product_profiles.product_id = products.id')
                          .joins('INNER JOIN variables ON variables.product_id = products.id')
  end

  def delete
    @product = Product.find_by(params[:id]).destroy
    if @product.destroy
      redirect_to '/users/new'
    end
  end


end
