class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    if params[:id].to_i > Cheese.last.id
      render json: {error:"We can't find what you are looking for"}
    else
      cheese = Cheese.find(params[:id])
      render json: cheese
    end
  end

end