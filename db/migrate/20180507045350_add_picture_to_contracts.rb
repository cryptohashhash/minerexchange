class AddPictureToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :picture, :string
  end
end
