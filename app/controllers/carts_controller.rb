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
          flash[:alert] = "Item added to cart"
          redirect_back(fallback_location: root_path)
     else
          flash[:alert] = "Item already exists in the cart"
          redirect_back(fallback_location: root_path)
     end
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
