class AddJapanToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :japan, :boolean
  end
end
