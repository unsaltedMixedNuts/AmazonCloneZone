# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  url            :string           not null
#  ord            :integer          not null
#  imageable_id   :string           not null
#  imageable_type :string           not null
#  created_at     :datetime
#  updated_at     :datetime
#

class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
end
