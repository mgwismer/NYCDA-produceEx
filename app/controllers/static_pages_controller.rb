class StaticPagesController < ApplicationController
  def home
  	if params[:search]
  		@sellers = Seller.search(params[:search]).order("created_at DESC")
  	else
  		@sellers = Seller.all.order("created_at DESC")
  	end
  end

  def about
  end

  def contact
  end

  def help
  end


end
