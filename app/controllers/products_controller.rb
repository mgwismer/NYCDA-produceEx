class ProductsController < ApplicationController
  
  # before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
  end

  def show
    @product = Product.find(params[:id])
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

  # def set_product
  #   @product = Product.find(params[:id])
  # end

end
