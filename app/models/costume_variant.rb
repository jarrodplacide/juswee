# == Schema Information
#
# Table name: costume_variants
#
#  id          :integer          not null, primary key
#  costume_id  :integer          indexed
#  name        :string
#  gender      :string
#  open        :boolean
#  sold_out    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price_cents :integer
#
# Indexes
#
#  index_costume_variants_on_costume_id  (costume_id)
#

class CostumeVariant < ActiveRecord::Base
  # Monetize Price Attribute
  monetize :price_cents

  # Belongs to one costume
  belongs_to :costume, inverse_of: :costume_variants

  # May have one or many images
  has_many :costume_variant_images, inverse_of: :costume_variant
end
