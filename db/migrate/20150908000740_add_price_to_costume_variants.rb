class AddPriceToCostumeVariants < ActiveRecord::Migration
  def change
    add_column :costume_variants, :price_cents, :integer
  end
end
