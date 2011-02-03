class RemoveFrequencies < ActiveRecord::Migration
  def self.up
    drop_table :frequencies
  end

  def self.down
  end
end
