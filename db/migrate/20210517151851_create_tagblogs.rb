class CreateTagblogs < ActiveRecord::Migration[6.1]
  def change
    create_table :tagblogs,id:false do |t|
      t.integer :id ,null: false , primary_key:true
      t.string  :name
    end
  end
end
