class FreegraffersController < ApplicationController
  def index
    @freegraffers = Freegraffer.all
  end

  def show
    @freegraffers = Freegraffer.find(params[:id])
  end

  def new
    @freegraffers = Freegraffer.new
  end

  def create
    @freegraffers = Freegraffer.new(freegraffers_params)
  end

  private

  def freegraffer_params
    params.require(:freegraffers).permit(:name, :style, :price, :disponibility)
  end
end
