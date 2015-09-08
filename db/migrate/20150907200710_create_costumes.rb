class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.integer :section_id
      t.string :name

      t.timestamps null: false
    end
    add_index :costumes, :section_id
  end
end
