class AddDateToConsumptions < ActiveRecord::Migration[5.2]
  def change
    add_column :consumptions, :date, :date
  end
end
