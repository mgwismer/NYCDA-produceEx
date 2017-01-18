class MarketsController < ApplicationController
  def index
  end

  def show
    @seller = Seller.find(params[:id])
  end

  def new
    @market = Market.new
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end
  end

  def edit
  end

  def create
    @market = Market.new(market_params)
    @market.product_id = params[:product]
    @market.seller_id = current_seller.id
    @market.save
  end

  def update
    @seller = current_seller
  end

  def destroy   
    @seller = current_seller
    Market.find(params[:id]).destroy
    flash[:success] = "order deleted"
    redirect_to market_path(@seller)
  end

  def market_params
    params.require(:market).permit(:description, :price, :price_description, :harvest_date, :harvest_location)
  end
end
