class CreateCostumeVariants < ActiveRecord::Migration
  def change
    create_table :costume_variants do |t|
      t.integer :costume_id
      t.string :name
      t.string :gender
      t.boolean :open
      t.boolean :sold_out

      t.timestamps null: false
    end
    add_index :costume_variants, :costume_id
  end
end
