class CreateJournalpages < ActiveRecord::Migration[8.0]
  def change
    create_table :journalpages do |t|
      t.references :journal, null: false, foreign_key: true
      t.string :prompt
      t.text :answer

      t.timestamps
    end
  end
end
