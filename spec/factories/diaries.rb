# == Schema Information
#
# Table name: diaries
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  likes_count :integer          default(0), not null
#

FactoryBot.define do
  factory :diary do
    title "MyString"
    content "MyText"
  end
end
