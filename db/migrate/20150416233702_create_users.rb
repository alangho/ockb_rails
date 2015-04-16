class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :status
      t.string :role
      t.string :image_url

      t.timestamps null: false
    end
  end
end
