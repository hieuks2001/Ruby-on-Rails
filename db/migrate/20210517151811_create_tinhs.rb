class CreateTinhs < ActiveRecord::Migration[6.1]
  def change
    create_table :tinhs ,id:false do |t|
      t.integer :id ,null: false , primary_key:true
      t.string  :namecity 
    end
  end
end
