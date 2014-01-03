class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :f_name, :string, :null => false, :default => ""
    add_column :users, :l_name, :string, :null => false, :default => ""
  end
end
