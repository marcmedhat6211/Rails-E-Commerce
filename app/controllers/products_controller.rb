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
        @product = Product.new(product_params)
        authorize! :create, @product, :message => "Only a seller can create a new product"
        @product.save
        render 'welcome/show'
    end

    private
        def product_params
            params.require(:product).permit(:title, :description, :price, :stock, :category_id, :brand_id, :avatar)
        end

end
