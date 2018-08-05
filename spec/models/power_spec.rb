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

require 'rails_helper'

RSpec.describe Power, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
