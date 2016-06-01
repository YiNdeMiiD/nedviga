class CreateUsers < ActiveRecord::Migration
  def change
    unless table_exists? 'users' 
      create_table :users do |t|
        t.string :email,    null: false
        t.string :password, null: false
        t.string :role,     null: false
        t.timestamps        null: false
      end
    end
  end
end
