class TourismComment < ApplicationRecord
  belongs_to :user
  belongs_to :tourism
end
