class ContinentsController < ApplicationController

  def index
  end

  def show
    @continent = Continent.find(params[:id])
  end


end
