class RemovePhoneFromProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :phone, :integer
  end
end
