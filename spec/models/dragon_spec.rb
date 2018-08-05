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

require 'rails_helper'

RSpec.describe Dragon, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
