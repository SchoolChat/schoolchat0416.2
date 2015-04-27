class AddEducationalProgramToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :educationalprogram, :text
  end
end
