class AddPhoneToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :phone, :integer
  end
end
