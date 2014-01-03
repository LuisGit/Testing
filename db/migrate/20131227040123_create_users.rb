class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      #t.string :email
      t.string :password

      t.timestamps
    end
  end
 
  def self.down
    drop_table :products
  end
end
