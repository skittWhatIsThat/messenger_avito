class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :users,index: true, null: false, foreign_key: true

      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
