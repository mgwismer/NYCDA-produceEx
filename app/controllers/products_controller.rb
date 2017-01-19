class ProductsController < ApplicationController
  
  # before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    # @sellers = Seller.all
    @sellers = Seller.all
    @avail_sellers = []
    @available_markets = []
    #find all the markets of all the sellers
    @sellers.each do |seller|
      seller.markets.each do |market|
        @available_markets.push(market)
      end
    end
    if (params[:search])
      #find which markets have params[:search]
      @available_markets.each do |market|
        if market.product.name.downcase().include? params[:search]
           @avail_sellers.push(market.seller)
        end
      end
    end
  end

  def show
    #@sellers = Seller.all
    # @seller = Seller.find(params[:seller_id])
    @product = Product.find(params[:id])
    @markets = Market.where(product_id: @product.id)
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

private

  def product_params
    params.require(:user).permit(:name, :PLU, :category, :organic)
  end

  def market_params
    params.require(:market).permit(:seller_id, :product_id, :description, :price, :price_description, :harvest_date, :harvest_location)
  end
  # def set_product
  #   @product = Product.find(params[:id])
  # end

end
