class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :amount
      t.belongs_to :user, foreign_key: true
      t.belongs_to :category, foreign_key: true
      t.timestamps
    end
  end
end
