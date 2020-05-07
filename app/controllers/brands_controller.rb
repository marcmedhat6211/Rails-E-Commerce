class BrandsController < ApplicationController

    def new
    end

    def create
        @brand = Brand.new(brand_params)
        @brand.save
        # redirect_to @brand
    end

    private
        def brand_params
            params.require(:brand).permit(:name)
        end

end
