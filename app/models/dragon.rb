# == Schema Information
#
# Table name: dragons
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  min_power  :integer
#  max_power  :integer
#

class Dragon < ApplicationRecord
  has_many :powers
end
