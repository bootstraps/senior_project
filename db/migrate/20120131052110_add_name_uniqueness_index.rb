class AddNameUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :leagues, :name, :unique => true
  end

  def self.down
    remove_index :leagues, :name
  end
end
