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

FactoryBot.define do
  factory :power do
    point 1
    dragon_id 1
  end
end
