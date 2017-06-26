class AddContractTypeToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :contract_type, :string
  end
end
