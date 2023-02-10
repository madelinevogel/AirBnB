class ReviewsController < ApplicationController
  def new
    @review = Review.new
    render :new
  end

  def create
    @review = Review.create!(
      reservation_id: params[:review][:reservation_id],
      rating: params[:review][:rating],
      comment: params[:review][:comment],
    )
    redirect_to "/rooms/index"
  end

  def index
    @reviews = Review.all
    render :index
  end
end
