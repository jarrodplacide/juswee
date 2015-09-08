# == Schema Information
#
# Table name: sections
#
#  id           :integer          not null, primary key
#  section_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string
#

class Section < ActiveRecord::Base
  # Image Uploader
  mount_uploader :image, CostumeImageUploader

  # Has many costumes
  has_many :costumes, inverse_of: :section
end
