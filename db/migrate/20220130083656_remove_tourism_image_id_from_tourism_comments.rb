class RemoveTourismImageIdFromTourismComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :tourism_comments, :tourism_image_id, :integer
  end
end
