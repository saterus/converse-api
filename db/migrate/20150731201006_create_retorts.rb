class CreateRetorts < ActiveRecord::Migration
  def change
    create_table :retorts do |t|
      t.integer :conversation_id, null: false
      t.integer :retortionist_id, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
