class OrdersController < ApplicationController
    def create
        @order=Order.new(order_params)
    end

    def order_params
        params.require(:orders).permit(:status, :user_id, :store_id)
    end
end

