class ChargesController < ApplicationController
	 #after_action :create_order_and_pay, only: [:create]

	def new
		@item = find_item
		puts "s" * 120
	  puts params[:stripEmail]
	  puts params[:stripeToken]
	  puts "s" * 120
	end

	def create
	  # Amount in cents

		  @amount = find_item.price.to_i

		  customer = Stripe::Customer.create({
		    email: params[:stripeEmail],
		    source: params[:stripeToken],
		  })


		  charge = Stripe::Charge.create({
		    customer: customer.id,
		    amount: @amount,
		    description: 'Rails Stripe customer',
		    currency: 'usd',
		  })

	order = Order.new(user_id: current_user.id)
    if order.save
      flash[:success]= "Vous avez commandé et acheté #{find_item.title} avec succés. Vous avez recu un email de confirmation de votre commande"
      redirect_to root_path
    end

		rescue Stripe::CardError => e
		  flash[:error] = e.message
	redirect_to root_path
	
		end


	private
	def find_item
		Item.find(params[:item_id])
	end
	def create_order_and_pay
		if create
		redirect_to orders_path, method: :post
		end
	end

end
