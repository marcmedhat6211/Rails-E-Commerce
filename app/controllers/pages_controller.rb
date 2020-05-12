class PagesController < ApplicationController

        
        def search  
            if params[:search].blank?  
              redirect_to(root_path, alert: "Empty field!") and return  
            else  
              @parameter = params[:search].downcase  
              @results = Product.all.where("lower(title) LIKE :search", search: @parameter)
              # @results.cn =Category.where(id : @results.category_id)
              # .joins(:categories)
            end  
          end
          #attempt to make a filter feature using ruby

          # def initialize_search
          #   @categories = Category.alphabetical
          #   session[:search_name] ||= params[:search_name]
          #   session[:filter] = params[:filter]
          #   params[:filter_option] = nil if params[:filter_option] == ""
          #   session[:filter_option] = params[:filter_option]
          # end
          
          # def handle_search_name
          #   if session[:search_name]
          #     @products = Product.where("name LIKE ?", "%#{session[:search_name].titleize}%")
          #     @categories = @categories.where(code: @products.pluck(:category))
          #   else
          #     @products = Product.all
          #   end
          # end
        
          # def handle_filters
          #   if session[:filter_option] && session[:filter] == "position"
          #     @products = @products.where(position: session[:filter_option])
          #     @categories = @categories.where(code: @products.pluck(:Category))
          #   elsif session[:filter_option] && session[:filter] == "category"
          #     @categories = @categories.where(code: session[:filter_option])
          #   end
          # end
          # session[:search_name] = params[:search_name]

      end


