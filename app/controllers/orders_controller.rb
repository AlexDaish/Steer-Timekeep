class OrdersController < ApplicationController
  before_action :require_user, except: [:show]

  def new
  	@order = Order.new
  end

  def create
  	# find the watch
  	@watch = Watch.find(params[:watch_id])
  	# create a new order with watch_id = @watch.id
  	@order = @watch.orders.new(order_params)
  	# set user_id - current_user.id
  	@order.user = current_user
   	#charging code goes here
  	if @order.save
  		flash[:success] = "Order made"
  		redirect_to @order
  	else
  		flash[:error] = 'Please check the form for errors and try again'
  		render :new
  	end
  end

  def show
  	@order = Order.find(params[:id])
  	require_owner(@order) # make sure order.user_id == current_user.id
  end

  private
  def order_params
  	params.require(:order).permit(:stripe_token)
  end
end
