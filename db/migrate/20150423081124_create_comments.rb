class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :category_id

      t.references :school, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :schools
  end
end
