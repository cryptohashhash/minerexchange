class AddPriceToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :price, :decimal
  end
end
