class AddSlugToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :slug, :string
    add_index :costumes, :slug, unique: true
  end
end
