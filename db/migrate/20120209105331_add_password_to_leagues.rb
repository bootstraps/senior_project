class AddPasswordToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :password, :string
  end
end
