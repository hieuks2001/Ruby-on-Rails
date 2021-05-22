class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs ,id:false do |t|
      t.integer :id_blog, null:false,primary_key:true
      t.integer :id_user
      t.string  :username
      t.string  :title
      t.string  :preamble
      t.string  :content
      
    end
  end
end
