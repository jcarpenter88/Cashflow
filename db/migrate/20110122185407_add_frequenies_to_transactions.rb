class AddFrequeniesToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :frequency_id, :integer, :nul => false, :options => "CONSTRAINT fk_transaction_tranaction_types REFERENCES transaction_types(id)"
  end

  def self.down
    remove_column :transactions, :frequency_id
  end
end
