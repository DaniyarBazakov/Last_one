class AddDateToBets < ActiveRecord::Migration[5.2]
  def change
    add_column :bets, :date, :date
  end
end
