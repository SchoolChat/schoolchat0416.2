class CreateSchoolUsers < ActiveRecord::Migration
  def change
    create_table :school_users do |t|
      t.integer :school_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
