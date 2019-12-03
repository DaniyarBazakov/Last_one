class AddColumnToSavings < ActiveRecord::Migration[5.2]
  def change
    add_column :savings, :price_per_cigarette, :integer
  end
end
