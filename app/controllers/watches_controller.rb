class WatchesController < ApplicationController
  def index
  	@watches = [{name: "Backup Black", description: "lorem ipsum", price_in_pence: 5000}, {name: "Classic Digital Silver/Yellow", description: "lorem ipsum", price_in_pence: 4999}, {name: "Vintage Raketa", description: "lorem ipsum", price_in_pence: 12000}, {name: "Max Bill Chronoscope", description: "lorem ipsum", price_in_pence: 200000}]
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
 
end
