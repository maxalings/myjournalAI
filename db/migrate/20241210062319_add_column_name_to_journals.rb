class AddColumnNameToJournals < ActiveRecord::Migration[8.0]
  def change
    add_column :journals, :name, :string
  end
end
