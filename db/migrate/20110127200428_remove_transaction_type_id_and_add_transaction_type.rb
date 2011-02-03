class RemoveTransactionTypeIdAndAddTransactionType < ActiveRecord::Migration
  def self.up
    remove_column :transactions, :transaction_type_id
    add_column :transactions, :transaction_type, :string
  end

  def self.down
    add_column :transactions, :transaction_type_id, :integer
    remove_column :transactions, :transaction_type
  end
end
