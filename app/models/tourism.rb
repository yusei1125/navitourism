class Tourism < ApplicationRecord
  belongs_to :user
  attachment :image
end
