class RemoveTransactionTypeFromTransactions < ActiveRecord::Migration
  def self.up
    remove_column :transactions, :transaction_type
  end

  def self.down
    add_column :transactions, :transaction_type, :string
  end
end
