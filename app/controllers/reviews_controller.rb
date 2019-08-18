class ReviewsController < ApplicationController
  def new
    @accomendation = Accomendation.find(params[:accomendation_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @accomendation = Accomendation.find(params[:accomendation_id])
    @review.accomendation = @accomendation
    if @review.save
      redirect_to accomendation_path(@accomendation)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
