class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      #t.belongs_to :account, index: true, foreign_key: true
      t.references :account,index: true, null: false, foreign_key: true

      t.string :name
      t.boolean :status
      t.time :time_last_messages

      t.timestamps
    end
  end
end
