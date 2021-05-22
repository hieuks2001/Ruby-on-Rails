class CreateDiadiems < ActiveRecord::Migration[6.1]
  def change
    create_table :diadiems,id:false  do |t|
      t.integer :id_dd, null:false,primary_key:true
      t.string  :namedd
      t.integer :idtinh
      t.string  :anh
      t.string  :mota
      
    end
  end
end
