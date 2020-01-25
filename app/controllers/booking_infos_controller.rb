class BookingInfosController < ApplicationController
  def new
    @booking_info = BookingInfo.new
    @freegraffer = Freegraffer.find(params[:freegraffer_id])
  end

  def index
    @booking_infos = BookingInfo.where(user_id: current_user.id)
    @booking_freelances = BookingInfo.where(freegraffer_id: current_user.id)
  end

  def create
    @freegraffer = Freegraffer.find(params[:freegraffer_id])
    @booking_info = BookingInfo.new(booking_info_params)
    @booking_info.freegraffer = @freegraffer
    @booking_info.user = current_user
    if @booking_info.save
      redirect_to freegraffer_booking_infos_path
    else
      render :new
    end
  end

  def booking_info_params
    params.require(:booking_info).permit(:start_date, :end_date)
  end

end
