# == Schema Information
#
# Table name: riddles
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Riddle, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
