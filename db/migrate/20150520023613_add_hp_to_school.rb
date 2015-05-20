class AddHpToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :hp, :text
  end
end
