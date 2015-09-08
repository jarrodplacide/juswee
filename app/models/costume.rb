# == Schema Information
#
# Table name: costumes
#
#  id         :integer          not null, primary key
#  section_id :integer          indexed
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#
# Indexes
#
#  index_costumes_on_section_id  (section_id)
#

class Costume < ActiveRecord::Base
  # Image Uploader
  mount_uploader :image, CostumeImageUploader

  # Belongs to a section
  belongs_to :section, inverse_of: :costumes

  # Has many costume variants
  has_many :costume_variants, inverse_of: :costume
end
