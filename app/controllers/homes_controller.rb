class HomesController < ApplicationController
  def top
    @tourism = Tourism.order("updated_at").limit(3)
    @all_ranks = Tourism.find(Favorite.group(:tourism_id).order('count(tourism_id) desc').limit(5).pluck(:tourism_id))
    @tourism_comment_ranks = Tourism.find(TourismComment.group(:tourism_id).order('count(tourism_id) desc').limit(5).pluck(:tourism_id))
  end

  def about
  end
end