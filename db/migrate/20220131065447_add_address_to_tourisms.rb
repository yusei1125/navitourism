class AddAddressToTourisms < ActiveRecord::Migration[5.2]
  def change
    add_column :tourisms, :address, :string
  end
end
