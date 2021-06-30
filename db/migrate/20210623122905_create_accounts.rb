class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :user,index: true, null: false, foreign_key: true

      t.string :client_id
      t.string :client_secret

      t.integer :user_id

      t.timestamps
    end
  end
end
