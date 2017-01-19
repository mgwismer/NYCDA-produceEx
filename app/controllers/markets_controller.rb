class MarketsController < ApplicationController
  before_action :set_market, only: [:edit, :update, :destroy]
  #before_action :authenticate_seller! not sure what this does

  def index
  end

  def show
    @seller = Seller.find(params[:id])
  end

  def new
    @market = Market.new
    @products = nil
    if params[:search]
      if Product.search(params[:search]).order("created_at DESC")
        @products = Product.search(params[:search]).order("created_at DESC")
      else
        @products = nil
      end
    end
  end

  def edit
  end

  def create
    @market = Market.new(market_params)
    @market.product_id = params[:product]
    @market.seller_id = current_seller.id
    @market.save
    redirect_to profiles_show_path
  end

  def update
    @seller = current_seller
    @market.update(market_params)
    redirect_to market_path(@seller)
  end

  def destroy   
    @seller = current_seller
    Market.find(params[:id]).destroy
    flash[:success] = "order deleted"
    redirect_to market_path(@seller)
  end

  private

  def market_params
    params.require(:market).permit(:description, :price, :price_description, :harvest_date, :harvest_location)
  end

  def set_market
    @market = Market.find(params[:id])
  end

end
