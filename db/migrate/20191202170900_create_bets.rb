class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.integer :amount
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
