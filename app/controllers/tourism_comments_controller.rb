class TourismCommentsController < ApplicationController
  before_action :authenticate_user!

 def create
    tourism = Tourism.find(params[:tourism_id])
    comment = current_user.tourism_comments.new(tourism_comment_params)
    comment.tourism_id = tourism.id
    comment.save
    redirect_to tourism_path(tourism)
 end

  def destroy
    @tourism = Tourism.find(params[:tourism_id])
    tourism_comment = TourismComment.find(params[:id])
    tourism_comment.destroy
    redirect_to request.referer
  end



  private

  def tourism_comment_params
    params.require(:tourism_comment).permit(:comment)
  end
end
