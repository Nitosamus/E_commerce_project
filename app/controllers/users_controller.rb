class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  def product_params
    params.require(:product).permit(:image [])
  end
end
