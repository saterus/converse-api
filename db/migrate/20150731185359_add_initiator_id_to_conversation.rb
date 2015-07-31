class AddInitiatorIdToConversation < ActiveRecord::Migration
  def change
    add_column :conversations, :initiator_id, :integer, null: false
  end
end
