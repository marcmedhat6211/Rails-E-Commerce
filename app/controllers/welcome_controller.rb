class WelcomeController < ApplicationController

    def index
       @categories = Category.all
       @brands = Brand.all
       @products=Product.all
    end
    
    def show
        @product = Product.find(params[:id])
    end 
    
end
