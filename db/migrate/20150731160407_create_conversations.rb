class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
