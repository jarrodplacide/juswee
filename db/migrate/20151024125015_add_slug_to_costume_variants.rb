class AddSlugToCostumeVariants < ActiveRecord::Migration
  def change
    add_column :costume_variants, :slug, :string
    add_index :costume_variants, :slug, unique: true
  end
end
