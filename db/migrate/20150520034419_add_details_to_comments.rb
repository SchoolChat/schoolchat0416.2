class AddDetailsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :name, :string
    add_column :comments, :email, :string
    add_column :comments, :attendedgrade, :string
    add_column :comments, :startgrade, :integer
    add_column :comments, :englishfirst, :string
    add_column :comments, :attitudejap, :string
    add_column :comments, :attitudeclass, :string
    add_column :comments, :attitude, :string
    add_column :comments, :teacherliked, :string
    add_column :comments, :teachersupport, :string
    add_column :comments, :teaching, :string
    add_column :comments, :teacherjap, :string
    add_column :comments, :attendedyears, :integer
  end
end
