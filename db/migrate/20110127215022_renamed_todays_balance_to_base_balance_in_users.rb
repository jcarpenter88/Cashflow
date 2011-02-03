class RenamedTodaysBalanceToBaseBalanceInUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :todays_balance, :base_balance
  end

  def self.down
    rename_column :users, :base_balance, :todays_balance
  end
end
