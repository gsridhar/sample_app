class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  	def index
  	end

  def create
    debugger
    1
    @micropost = current_user.microposts.build(params[:micropost])
    
    if @micropost.save
      flash.keep[:success] = "Micropost created!"
      redirect_back_or current_user
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
   debugger
   0
   Micropost.find(params[:id]).destroy
   flash.keep[:success] = "Micropost Deleted" 
   redirect_back_or root_url
  end



  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
