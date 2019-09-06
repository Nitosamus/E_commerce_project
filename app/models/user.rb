class User < ApplicationRecord
  has_one_attached :image
	 after_create :welcome_send
	   has_one :cart
	   has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
