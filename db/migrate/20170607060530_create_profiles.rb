class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.datetime :birthday
      t.integer :sex
      t.integer :zipcode
      t.string :address
      t.integer :user_id
      t.integer :sex_id
    

      t.timestamps
    end
  end
end
