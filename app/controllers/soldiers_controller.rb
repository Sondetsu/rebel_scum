class SoldiersController < ApplicationController
  def index
    @soldiers = Soldier.all
  end

  def show
    @soldier = Soldier.find(params[:id])
    @planets = @soldier.planets
  end
end
