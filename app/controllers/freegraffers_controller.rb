class FreegraffersController < ApplicationController
  def index
    @freegraffers = Freegraffer.all
  end

  def show
    @photos = ["https://files.slack.com/files-pri/T02NE0241-FSU6SASBS/keith.jpg", ]
    @freegraffer = Freegraffer.find(params[:id])
  end

  def new
    @freegraffer = Freegraffer.new
  end

  def create
    @freegraffer = Freegraffer.new(freegraffers_params)
  end

  def top
    @freegraffers = Freegraffer.where(stars: 5)
  end

  private

  def freegraffer_params
    params.require(:freegraffers).permit(:name, :style, :price, :disponibility, photos: [])
  end
end
