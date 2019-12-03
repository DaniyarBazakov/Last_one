class AddGoalToBets < ActiveRecord::Migration[5.2]
  def change
    add_column :bets, :goal, :integer
  end
end
