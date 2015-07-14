# == Schema Information
#
# Table name: departments
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  parent_dept_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Department < ActiveRecord::Base
    validates :name, presence: true

    has_many :children,
      class_name: "Department",
      primary_key: :id,
      foreign_key: :parent_dept_id

    belongs_to :parent,
      class_name: "Department",
      primary_key: :id,
      foreign_key: :parent_dept_id
end
