class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :title
      t.text :description
      t.string :owner

      t.timestamps
    end
  end
end
