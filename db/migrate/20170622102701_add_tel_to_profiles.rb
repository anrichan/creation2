class AddTelToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :tel, :string
  end
end
