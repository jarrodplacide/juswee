class CreateCostumeVariantImages < ActiveRecord::Migration
  def change
    create_table :costume_variant_images do |t|
      t.string :file
      t.string :description
      t.integer :costume_variant_id

      t.timestamps null: false
    end
    add_index :costume_variant_images, :costume_variant_id
  end
end
