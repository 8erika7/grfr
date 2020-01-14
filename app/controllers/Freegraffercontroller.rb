class FreegrafferController < ApplicationController
  def index
    @freegraffers = freegraffer.all
  end

  def show
    @freegraffers = freegraffer.find(params[:id])
  end

  def new
    @freegraffers = freegraffer.new
  end

  def create
    @freegraffers = freegraffers.new(freegraffers_params)
  end

  private

  def freegraffer_params
    params.require(:freegraffers).permit(:name, :style, :price, :disponibility)
  end
end
