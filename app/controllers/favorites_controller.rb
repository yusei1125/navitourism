class FavoritesController < ApplicationController
  def create
    tourism = Tourism.find(params[:tourism_id])
    favorite = current_user.favorites.new(tourism_id: tourism.id)
    favorite.save
    redirect_to tourism_path(tourism)
  end

  def destroy
    tourism = Tourism.find(params[:tourism_id])
    favorite = current_user.favorites.find_by(tourism_id: tourism.id)
    favorite.destroy
    redirect_to tourism_path(tourism)
  end
end
