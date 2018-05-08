class AddContractIdToFeedbacks < ActiveRecord::Migration[5.1]
  def change
    add_column :feedbacks, :contract_id, :integer
  end
end
