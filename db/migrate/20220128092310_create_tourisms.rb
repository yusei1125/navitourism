class CreateTourisms < ActiveRecord::Migration[5.2]
  def change
    create_table :tourisms do |t|
      t.text :title
      t.text :caption
      t.integer :user_id
      t.string :image_id


      t.timestamps
    end
  end
end
