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

FactoryBot.define do
  factory :dragon do
    name "MyString"
    image_url "MyString"
  end
end
