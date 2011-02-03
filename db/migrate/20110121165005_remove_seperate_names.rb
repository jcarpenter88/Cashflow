class RemoveSeperateNames < ActiveRecord::Migration
  def self.up
    remove_column :users, :first_name
    remove_column :users, :last_name

    
    add_column :users, :name, :string
  end

  def self.down
    add_column :users do
      t.string :first_name
      t.string :last_name
    end
    
    remove_column :users, :name
  end
  
end
