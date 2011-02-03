class AddAmountToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :amount, :decimal
  end

  def self.down
    remove_column :transactions, :amount
  end
end
