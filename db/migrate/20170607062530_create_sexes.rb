class CreateSexes < ActiveRecord::Migration[5.0]
  def change
    create_table :sexes do |t|
      t.string :type
      t.integer :profile_id

      t.timestamps
    end
  end
end
