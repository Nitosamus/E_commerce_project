class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

  def show

  	@item = find_item
    @cart = Cart.find_by(user_id: current_user.id)

  end
  def update
    
  end

  private
  def find_item
  	Item.find(params[:id])
  end
end
