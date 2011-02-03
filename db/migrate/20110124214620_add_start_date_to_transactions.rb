class AddStartDateToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :start_date, :date
  end

  def self.down
    remove_column :transactions, :start_date
  end
end