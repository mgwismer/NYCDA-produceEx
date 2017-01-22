class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @sellers = Seller.all
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.seller_id = params[:seller_id]
    @review.buyer_id = current_buyer.id
    if @review.save
      redirect_to buyer_profiles_show_path
    else 
      flash[:review_error] = "Comment Not Saved"
      redirect_back(fallback_location: new_review_path)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
