# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Brand < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
