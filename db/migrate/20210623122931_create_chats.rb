class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.references :account,index: true, null: false, foreign_key: true

      t.string :name
      t.text :last_message

      t.integer :chat_id

      t.timestamps
    end
  end
end
