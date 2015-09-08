class AddImageToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :image, :string
  end
end
