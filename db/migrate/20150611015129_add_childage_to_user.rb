class AddChildageToUser < ActiveRecord::Migration
  def change
    add_column :users, :childage, :integer
  end
end
