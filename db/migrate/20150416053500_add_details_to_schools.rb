class AddDetailsToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :name, :text
    add_column :schools, :location, :text
    add_column :schools, :kindergarten, :boolean
    add_column :schools, :primary, :boolean
    add_column :schools, :middle, :boolean
    add_column :schools, :high, :boolean
    add_column :schools, :program, :boolean
    add_column :schools, :boarding, :boolean
  end
end
