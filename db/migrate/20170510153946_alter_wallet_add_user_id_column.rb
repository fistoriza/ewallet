class AlterWalletAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :wallets, :user_id, :integer
    add_index :wallets, :user_id
  end
end
