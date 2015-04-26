class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :post, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :comments, :posts
  end
end
