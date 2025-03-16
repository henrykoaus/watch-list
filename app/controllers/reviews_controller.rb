class ReviewsController < ApplicationController
  before_action :set_list

  def new
    @review = @list.reviews.build
  end

  def create
    @review = @list.reviews.build(review_params)

    if @review.save
      redirect_to @list, notice: "Review added successfully!"
    else
      redirect_to list_path(@list), notice: "Enter the comment/rating"
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
