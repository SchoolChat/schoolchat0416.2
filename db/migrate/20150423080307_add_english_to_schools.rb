class AddEnglishToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :eng_name, :text
    add_column :schools, :eng_location, :string
    add_column :schools, :eng_program, :text
  end
end
