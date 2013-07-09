
class CategoriesController < ApplicationController
	def index
		@categories= Category.paginate(page: params[:page])
	end

	def show
		store_location
		@category = Category.find(params[:id])
		@user = User.all
  	    @micropost = @category.microposts.paginate(page: params[:page])
  	    @micropost1  = current_user.microposts.build
  	    @micropost1.category_id=@category.category_id
  	 
	end
	def destroy
     @category.destroy
     redirect_back_or root_url
    end

	def fshow
		@category = Category.find( params[:id] )
		
		
	end
end
