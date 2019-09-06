class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  
   @user = User.find(params[:id])
   
  end

  def new
    @user= User.new
  end

  def create
    @user= User.new(user_params)
    @user.image.attach(params[:image])
    redirect_to @user
  end

  def update
    @user = current_user.update(user_params)
  end


  def destroy
    @user.destroy
    @user.image.purge
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :age, :city)
    end
end