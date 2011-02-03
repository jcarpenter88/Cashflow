class RemoveDaysFromFrequencies < ActiveRecord::Migration
  def self.up
    remove_column :frequencies, :days_between_transactions
    add_column :frequencies, :description, :string
  end

  def self.down
    add_column :frequencies, :days_between_transactions, :integer
    remove_column :frequencies, :description
  end
end
