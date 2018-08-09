# == Schema Information
#
# Table name: powers
#
#  id         :integer          not null, primary key
#  point      :integer          default(0)
#  dragon_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  diary_id   :integer
#

class Power < ApplicationRecord
  belongs_to :diary
  belongs_to :dragon

  validates :point, presence: true
end
