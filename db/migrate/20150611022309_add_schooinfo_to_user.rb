class AddSchooinfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :schoolinfo, :text
  end
end
