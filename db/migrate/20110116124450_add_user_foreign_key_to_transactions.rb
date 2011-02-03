class AddUserForeignKeyToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :user_id, :integer, :nul => false, :options => "CONSTRAINT fk_transaction_users REFERENCES users(id)"
  end

  def self.down
    remove_column :transactions, :user_id
  end
end
