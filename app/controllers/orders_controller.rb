class OrdersController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

 private
  def find_item
    Item.find(params[:item_id])
  end
end
