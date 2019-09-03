class ItemsController < ApplicationController
	def index
		@items = Item.all
	end
  def index
    @items = Item.all
  end
  
  def show
  	@item = find_item

  end

  private
  def find_item
  	Item.find(params[:id])
  end
end
