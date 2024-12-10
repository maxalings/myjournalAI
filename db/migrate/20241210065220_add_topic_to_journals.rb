class AddTopicToJournals < ActiveRecord::Migration[8.0]
  def change
    add_column :journals, :topic, :string
  end
end
