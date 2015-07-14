# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  url            :string           not null
#  ord            :integer
#  imageable_id   :string           not null
#  imageable_type :string           not null
#  created_at     :datetime
#  updated_at     :datetime
#

class Image < ActiveRecord::Base
  validates :url, :imageable_id, :imageable_type, presence: true
  belongs_to :imageable, polymorphic: true
end
