class CreateThanhtoans < ActiveRecord::Migration[6.1]
  def change
    create_table :thanhtoans,id:false  do |t|
      t.integer :id_thanhtoan, null:false, primary_key:true
      t.integer  :id_user 
      t.string    :danhmuc
      t.string    :type
      t.integer    :amount
    end
  end
end
