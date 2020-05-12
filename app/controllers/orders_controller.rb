class OrdersController < ApplicationController
    def create 
        @order = Order.new(order_params)
        @order.save
    end

    def order_params
        params.require(:order).permit(:status, :user_id, :store_id)
    end
end

