class AllResultsController < ApplicationController
  def index
    @squadrons = Squadron.all
    @planets = Planet.all
    @soldiers = Soldier.all
  end
end
