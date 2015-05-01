class SessionsController < ApplicationController
  def new
  	#don't need to assibn anything not saving anything to the DB
    
  end

  def create
  	#log in functionality goes here
  	email = params[:session][:email]
  	password = params[:session][:password]

  	@user =User.find_by(email: email)
  	if @user.present? and @user.authenticate(password)
  		# wipe the session clean
  		reset_session
  		# log in
  		session[:user_id] = @user.id
  		flash[:success] = "Logged in"
  		redirect_to root_path
  	else
  		flash[:error] = "Try again"
  		render :new
  	end

  end


  def show
      require_user
  end

  def destroy
  	reset_session
  	flash[:success] = "Logged out. see you again soon"
  	redirect_to root_path
  end

end
