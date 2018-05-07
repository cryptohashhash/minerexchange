class AddCategoryIdToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :category_id, :integer
  end
end
