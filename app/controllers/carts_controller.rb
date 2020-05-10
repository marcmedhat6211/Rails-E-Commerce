class CartsController < ApplicationController
  
  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def create
      @cart = Cart.new(cart_params)
     if(!Cart.where(product_id: @cart.product_id).take)
         @cart.save
     end
     redirect_back(fallback_location: root_path)
  end

  def destroy
     @cart = Cart.find(params[:id])
     @cart.destroy
    redirect_back(fallback_location: cart_path)
  end
  
   private
        def cart_params
            params.require(:cart).permit(:user_id,:product_id)
        end

end
