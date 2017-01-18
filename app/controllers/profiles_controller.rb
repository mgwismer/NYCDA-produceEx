class ProfilesController < ApplicationController
  def index
    @sellers = Seller.all
    if params[:search]
      @sellers = Seller.search(params[:search]).order("created_at DESC")
    else
      @sellers = Seller.all.order("created_at DESC")
    end
  end

  def show
    @seller = current_seller
    if !@seller.markets
      @seller.markets.create()
    end
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      #@products = Product.all.order("created_at DESC")
    end
  end

  def new
  end

  def edit
  end

  def delete
  end

  def update
  end

  def create
  end
end
