class RemoveDescriptionIdFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :description_id, :string
  end
end
