class TourismsController < ApplicationController
  def new
    @tourism = Tourism.new
  end

  def create
    @tourism = Tourism.new(tourism_params)
    @tourism.user_id = current_user.id
    @tourism.save
    redirect_to tourisms_path
  end

  def index
    @tourism = Tourism.all
  end

  def show
  end

  def destroy
  end

   # 投稿データのストロングパラメータ
  private

  def tourism_params
    params.require(:tourism).permit(:title, :image, :caption)
  end
end
