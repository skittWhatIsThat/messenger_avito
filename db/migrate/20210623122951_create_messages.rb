class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      #t.belongs_to :chat, index: true, foreign_key: true
      t.references :chat,index: true, null: false, foreign_key: true

      t.text :content
      t.integer :answer, 'integer unsigned'

      t.timestamps
    end
  end
end
