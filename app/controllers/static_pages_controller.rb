class StaticPagesController < ApplicationController
  def home
  	if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
  end

  def about
  end

  def contact
  end

  def help
  end


end
