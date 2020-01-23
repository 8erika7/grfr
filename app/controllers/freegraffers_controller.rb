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
    @freegraffer = Freegraffer.new(freegraffer_params)
    @freegraffer.user = current_user
    if @freegraffer.save
      redirect_to freegraffer_path(@freegraffer)
    else
      render :new
    end
  end

  def top
    @freegraffers = Freegraffer.where(stars: 5)
  end

  private

  def freegraffer_params
    params.require(:freegraffer).permit(:name, :style, :price, :disponibility, :photo)
  end
end
