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

require 'rails_helper'

RSpec.describe Diary, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
