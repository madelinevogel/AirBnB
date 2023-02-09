class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
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
      user_id: 1,
      room_id: room_id,
      start_date: start_date,
      end_date: end_date,
      price: price,
      total: total,
    )
    redirect_to "/reservations"
  end
end
