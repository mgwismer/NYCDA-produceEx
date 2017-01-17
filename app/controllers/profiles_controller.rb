class ProfilesController < ApplicationController
  def index
  end

  def show
  if params[:id]
    @seller = User.find(params[:id])
  else
    @seller = current_user
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
