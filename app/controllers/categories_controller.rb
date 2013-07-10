
class CategoriesController < ApplicationController
	def index
		store_location
		@categories= Category.paginate(page: params[:page])
		@user = User.all
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
	    Category.find(params[:id]).destroy
	    flash[:success] = "Product destroyed."
	    redirect_back_or root_url
  	end

	def fshow
		@category = Category.find( params[:id] )
	end

	def create
	    @category = Category.new(params[:category])
	    if @category.save
	      flash[:success] = "Added a Product Successfully"
	      redirect_to @category
	    else
	      render 'new'
	    end
	end

	def new
  		@category=Category.new
  	end
end
