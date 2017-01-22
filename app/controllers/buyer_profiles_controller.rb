class BuyerProfilesController < ApplicationController
  def index
  end

  def show
    if params[:id]
      @buyer = Buyer.find(params[:id])
    else
      @buyer = current_buyer
    end
    if params[:search]
      @reviews = Review.search(params[:search]).order("created_at DESC")
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
