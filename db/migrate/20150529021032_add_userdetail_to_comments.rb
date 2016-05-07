class AddUserdetailToComments < ActiveRecord::Migration
  def change
    add_column :comments, :userdetail, :text
  end
end
