class TourismsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  def new
    @tourism = Tourism.new
  end

  def create
    @tourism = Tourism.new(tourism_params)
    @tourism.user_id = current_user.id
    if @tourism.save
      redirect_to tourism_path(@tourism)
    else
      render :new
    end
  end

  def edit
    @tourism = Tourism.find(params[:id])
    if @tourism.user != current_user
        redirect_to tourisms_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @tourism = Tourism.find(params[:id])
    if @tourism.update(tourism_params)
      redirect_to tourism_path(@tourism), notice: "編集を完了しました。"
    else
      render :edit
    end
  end

  def index
    @tourism = Tourism.page(params[:page]).reverse_order
  end

  def show
    @tourism = Tourism.find(params[:id])
    @tourism_comment = TourismComment.new
  end

  def destroy
    @tourism = Tourism.find(params[:id])
    @tourism.destroy
    redirect_to tourisms_path
  end


   # 投稿データのストロングパラメータ
  private

  def tourism_params
    params.require(:tourism).permit(:title, :image, :caption)
  end
end