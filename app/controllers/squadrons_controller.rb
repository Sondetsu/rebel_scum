class SquadronsController < ApplicationController
  def index
    @squadrons = Squadron.all
  end

  def show
    @squadron = Squadron.find(params[:id])
    @soldiers = @squadron.soldiers
  end
end