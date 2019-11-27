class CreateHorribleFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :horrible_facts do |t|
      t.string :photo
      t.string :fact

      t.timestamps
    end
  end
end
