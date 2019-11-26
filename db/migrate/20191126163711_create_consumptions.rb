class CreateConsumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :consumptions do |t|
      t.integer :user_id
      t.integer :consumption_before_last_one
      t.integer :daily_actual_consumption

      t.timestamps
    end
  end
end
