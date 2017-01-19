class ProductsController < ApplicationController
  
  # before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    # @sellers = Seller.all
    @sellers = []
    @available_markets = []
    @sellers.each do |seller|
      seller.markets.each do |market|
        @available_markets.push(market)
      end
    end
    @available_markets.each do |market|
      if market.product.name.downcase().include? params[:search]
         @sellers.push(market.seller)
      end
    end
    # if params[:search]
    #   @products1 = @available_markets.search(params[:search]).order("created_at DESC")
    # else
    #   @products = @available_products.all.order("created_at DESC")
    # end
    redirect_to markets_path
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
