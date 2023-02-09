class ReservationsController < ApplicationController
  before_action :authenticate_user

  def index
    @reservations = current_user.reservations
    render :index
  end

  def new
    @reservation = Reservation.new
    render :new
  end

  def create
    room_id = params[:room_id]
    start_date = params[:reservation][:start_date]
    end_date = params[:reservation][:end_date]
    number_of_nights = BigDecimal((Date.parse(end_date) - Date.parse(start_date)), 6)
    p "number_of_nights: #{number_of_nights}"
    price = BigDecimal(params[:price])
    p price
    total = (price * number_of_nights)

    @reservation = Reservation.create(
      user_id: current_user.id,
      room_id: room_id,
      start_date: start_date,
      end_date: end_date,
      price: price,
      total: total,
    )
    redirect_to "/reservations"
  end
end
