class CartsController < ApplicationController
  before_action :check_cart_number_for_user, only: [:create]
  def index
  end

  def show
  end

  def new
  end

  def create
    @cart = Cart.new(user_id: current_user.id, item_id: params[:item_id])
    carts = Cart.all
    if @cart.save
      item = Item.find(params[:item_id])
      current_user.cart.items << Item.find(params[:item_id])
      flash[:alert] =  "#{current_user.email}, vous avez ajouté  #{item.title} dans votre panier
      et Vous avez atteint le nombre de cart"
      redirect_to item_cart_path(params[:item_id], @cart.id)
    else
      puts @cart
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

private
def check_cart_number_for_user
    cart_current = Cart.where(user_id:current_user.id)
    if cart_current.length >= 1
      item = Item.find(params[:item_id])
      current_user.cart.items << Item.find(params[:item_id])
      redirect_to root_path
      flash[:success] = "#{current_user.email}, vous avez ajouté  #{item.title} dans votre panier"

    end
end
end
