class SearchController < ApplicationController
  def index
  end

  def results
    @squadrons = Squadron.where('name LIKE ?', "%#{params[:q]}%")
    @planets = Planet.where('name LIKE ?', "%#{params[:q]}%")
    @soldiers = Soldier.where('name LIKE ?', "%#{params[:q]}%")
  end
end
