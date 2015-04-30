class WatchesController < ApplicationController
  def index
  	@watches = Watch.all

  def show
  	@watch = Watch.find(params[:id])
  end

  def new
  	@watch = Watch.new
  end

  def create
  	@watch = Watch.new(watch_params)

  	if @watch.save
  		flash[:success]= "Thanks for uploading"
  		redirect_to @watch
  	else
  		flash[:error] = "Please check form for error and try again"
  		render :new
  	end
  end

  def edit
  	@watch = Watch.find(params[:id])

  end

  def update
  	@watch = Watch.find(params[:id])

  	if @watch.update(watch_params)
  		flash[:success] = "Updated #{@watch.name}"
  		redirect_to @watch
	else
		flash[:error] = "Please check for errors and trye again"
		render :edit
	end
  end

  def destroy
  	@watch = Watch.find(params[:id])
  		
	flash[:success] = "#{@watch.name} was removed successfully" if @watch.destroy
	redirect_to root_path
  end
 
 end
end

	private
	def watch_params
		params.require(:watch).permit(:name, :description, :price_in_pence, :gender, :style, :brand, :pre_owned, :image)
	end