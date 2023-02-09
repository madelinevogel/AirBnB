class ReviewsController < ApplicationController
  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def create
    @review = Review.create(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    redirect_to "/reviews"
  end

  def index
    @reviews = Review.all
    render :index
  end
end
