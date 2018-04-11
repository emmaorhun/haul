class MallsController < ApplicationController

  def index
    @allMalls = Mall.all
  end



  def show
    @mall = Mall.find(params[:id])
end

  def malls

  end
end
