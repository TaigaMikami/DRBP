# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  diary_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :diary
  counter_culture :diary
  validates :user_id, presence: true
  validates :diary_id, presence: true
end
