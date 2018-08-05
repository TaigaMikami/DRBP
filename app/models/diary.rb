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

class Diary < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  has_one :power, dependent: :destroy

  scope :created_today, -> { where(created_at: Time.zone.now.all_day) }

  def iine(user)
    likes.create(user_id: user.id)
  end

  # マイクロポストのいいねを解除する（ネーミングセンスに対するクレームは受け付けません）
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end

  def iine?(user)
    iine_users.include?(user)
  end
end
