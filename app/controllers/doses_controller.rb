class DosesController < ApplicationController

  def new
    Cocktail.find(params[:cocktail_id])
    @dose = dose.ne
  end

  def create
    @dose = Restaurant.find(params[:dose_id])
    @review = Review.new(review_params)
    @review.dose = @dose
    if @review.save
      redirect_to dose_path(@dose)
    else
      render "doses/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
