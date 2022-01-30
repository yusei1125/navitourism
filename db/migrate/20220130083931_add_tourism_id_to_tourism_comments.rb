class AddTourismIdToTourismComments < ActiveRecord::Migration[5.2]
  def change
    add_column :tourism_comments, :tourism_id, :integer
  end
end
