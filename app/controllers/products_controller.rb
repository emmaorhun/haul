class ProductsController < ApplicationController

  def index
    @allProducts = Product.select('product_profiles.name')
                          .joins('INNER JOIN product_profiles ON product_profiles.product_id = products.id')
                          .joins('INNER JOIN variables ON products.id = variables.product_id')
                          .distinct
  end

  def filter
    @greenProducts = Product.select('product_profiles.name')
                            .joins('INNER JOIN product_profiles ON product_profiles.product_id = products.id')
                            .joins('INNER JOIN variables ON products.id = variables.product_id')
                            .where('variables.type_of_variable = "color"')
                            .where('variables.option = "green"')
                            .distinct

    @rideauProducts = ProductProfile.select(:name)
                                    .joins(:product)
                                    .joins('INNER JOIN stores ON products.store_id = stores.id')
                                    .joins('INNER JOIN malls on stores.mall_id = malls.id')
                                    .where('malls.name = "Rideau Center"')

  end

  def delete
    @product = Product.find_by(params[:id]).destroy
    if @product.destroy
      redirect_to '/products'
    end
  end


end
