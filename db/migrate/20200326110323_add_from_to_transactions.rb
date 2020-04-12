class AddFromToTransactions < ActiveRecord::Migration[6.0]
  def change
   	add_column :transactions, :from, :integer
  end
end
