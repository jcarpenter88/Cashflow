class AddForeignKeyToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :transaction_type_id, :integer, :nul => false, :options => "CONSTRAINT fk_transaction_tranaction_types REFERENCES transaction_types(id)"
  end

  def self.down
    remove_column :transactions, :transaction_type_id
  end
end
