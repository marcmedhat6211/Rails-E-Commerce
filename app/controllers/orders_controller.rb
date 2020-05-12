class OrdersController < ApplicationController

    
    
    def show
        @order = Order.find(params[:id])
    end

    def new
    end

    def create 
        @order = Order.new(order_params)
        @order.save
        redirect_to @order
    end


    def order_params
        params.require(:order).permit(:status, :user_id, :store_id)
    end
end

