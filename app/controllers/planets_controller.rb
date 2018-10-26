class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
    @soldiers = @planet.soldiers
  end
end
