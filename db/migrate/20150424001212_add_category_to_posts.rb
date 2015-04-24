class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :category, index: true
    add_foreign_key :posts, :categories
    add_column :posts, :sticky, :boolean
    add_column :posts, :challenge, :boolean
  end
end
