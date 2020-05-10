class StoresController < ApplicationController

    def index
        @stores = Store.all
    end

    def show
        @store = Store.find(params[:id])
    end

    def new
        
    end

    def create
        @store = Store.new(store_params)
        @store.save
        redirect_to @store
    end

    private
        def store_params
            params.require(:store).permit(:name, :summary, :user_id)
        end

end
