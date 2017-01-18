class MarketsController < ApplicationController
  def index
  end

  def show
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
    # product = Product.find(params[:id])
    # @market.push(product)
  end

  def update
  end

  def destroy
  end

  def market_params
    params.require(:market).permit(:description, :price, :price_description, :harvest_date, :harvest_location)
  end
end
