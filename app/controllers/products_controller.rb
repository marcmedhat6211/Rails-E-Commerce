class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end 
    
    def new       
    end

    def create
        # load_and_authorize_resource
        @product = Product.new(product_params)
        authorize! :create, @product
        @product.save
        redirect_to @product
    end

    private
        def product_params
            params.require(:product).permit(:title, :description, :price, :stock, :category_id, :brand_id, :avatar)
        end

end
