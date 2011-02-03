class DropFrequencies < ActiveRecord::Migration
  def self.up
    drop_table :frequencies
    remove_column :transactions, :frequency_id
    add_column :transactions, :frequency, :string
  end

  def self.down
    remove_column :transactions, :frequency
    add_column :transactions, :frequency_id, :integer
    create_table :frequencies do |t|
      t.string   "title"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "description"
    end
  end
end
