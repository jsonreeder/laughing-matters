# == Schema Information
#
# Table name: jokes
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Joke, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
