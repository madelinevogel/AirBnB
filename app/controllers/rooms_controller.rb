class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @title = "All Rooms"
    if current_user && params[:category] == "my_rooms"
      @rooms = Room.where(user_id: current_user.id)
      @title = "My Rooms"
    end
    render :index
  end

  def show
    @room = Room.find_by(id: params[:id])
    render :show
  end

  def new
    @room = Room.new
    render :new
  end

  def create
    @room = Room.create!(
      user_id: current_user.id,
      address: params[:room][:address],
      city: params[:room][:city],
      state: params[:room][:state],
      price: params[:room][:price],
      description: params[:room][:description],
      home_type: params[:room][:home_type],
      room_type: params[:room][:room_type],
      total_occupancy: params[:room][:total_occupancy],
      total_bedrooms: params[:room][:total_bedrooms],
      total_bathrooms: params[:room][:total_bathrooms],
    )
    redirect_to "/rooms"
  end

  def edit
    @room = Room.find_by(id: params[:id])
    render :edit
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.update(
      address: params[:room][:address],
      city: params[:room][:city],
      state: params[:room][:state],
      price: params[:room][:price],
      description: params[:room][:description],
      home_type: params[:room][:home_type],
      room_type: params[:room][:room_type],
      total_occupancy: params[:room][:total_occupancy],
      total_bedrooms: params[:room][:total_bedrooms],
      total_bathrooms: params[:room][:total_bathrooms],
    )
    redirect_to "/rooms"
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    redirect_to "/rooms", status: :see_other
  end
end
