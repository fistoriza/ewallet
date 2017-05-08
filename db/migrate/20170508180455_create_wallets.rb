class CreateWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :wallets do |t|
      t.string :expense
      t.integer :amount
      t.timestamps
    end
  end
end
