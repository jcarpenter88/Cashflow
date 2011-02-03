class RemoveTransactionTypeTable < ActiveRecord::Migration
  def self.up
    drop_table :transaction_types
  end

  def self.down
    create_table :transaction_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
