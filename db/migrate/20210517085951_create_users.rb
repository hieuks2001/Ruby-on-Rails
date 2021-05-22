class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users,id:false  do |t|
      t.integer :id_users, null: false, primary_key: true
      t.string  :username
      t.string  :password 
      t.string  :fullname
      t.string  :role
     
    end
  end
end
