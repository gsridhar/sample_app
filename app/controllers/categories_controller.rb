class CategoriesController < ApplicationController
	def index
		@products= User.paginate(page: params[:page])
	end
end
class CategoriesController < ApplicationController
	def index
		@categories= Category.paginate(page: params[:page])
	end

	def show
		@category = Category.find(params[:id])
		@user = User.all
  	    @micropost = @category.microposts.paginate(page: params[:page])
  	    @micropost1  = current_user.microposts.build
  	 
	end
end
