class ChangeImageFields < ActiveRecord::Migration
  def change
    change_table :costumes do |t|
      t.rename :image, :image_id
    end

    change_table :sections do |t|
      t.rename :image, :image_id
    end

    change_table :costume_variant_images do |t|
      t.rename :file, :file_id
    end
  end
end
