class UsersController < ApplicationController

  def index

    @users = User.all

  end

  def new
      @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def cart

    @user = User.find_by(id: (params[:id]))
    @cart_contents = User.select('product_profiles.name')
                         .joins(:cart)
                         .joins('INNER JOIN carts_products ON carts.id = carts_products.cart_id')
                         .joins('INNER JOIN products ON carts_products.product_id = products.id')
                         .joins('INNER JOIN product_profiles ON product_profiles.product_id = products.id')
                         .where(id: (params[:id]))
                         .distinct


  end

  private
    def user_params
      params.require(:user).permit(:email, :username, :password)
    end
end
