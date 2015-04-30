class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		# wipe lesson clean
  		reset_session
  		# Log in user 
		session[:user_id] = @user.id

  		flash[:success] = "Thanks for signing up"
  		redirect_to root_path
  	else
  		flash[:error] = "Please check the form for errors and try again"
  		render :new
    end
  end

  def edit
  end

	private
	def user_params
	params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :username, :email, :address_line_1, :address_line_2, :address_line_3, :address_line_4, :postcode)
	end

end
