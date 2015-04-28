class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :screen_name, :string
    add_column :users, :residence_country, :string
    add_column :users, :region, :string
    add_column :users, :school, :string
    add_column :users, :school2, :string
    add_column :users, :program, :text
    add_column :users, :bio, :text
    add_reference :users, :school_id, index: true
    add_foreign_key :users, :school_id
  end
end
