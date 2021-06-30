class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :chat,index: true, null: false, foreign_key: true
      t.references :account,index: true, null: false, foreign_key: true

      t.text :content

      t.json :response

      t.timestamps
    end
  end
end
