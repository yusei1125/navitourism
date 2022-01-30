class CreateTourismComments < ActiveRecord::Migration[5.2]
  def change
    create_table :tourism_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :Tourism_image_id

      t.timestamps
    end
  end
end
