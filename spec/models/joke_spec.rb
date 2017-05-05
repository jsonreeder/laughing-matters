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
  it { should validate_presence_of(:body) }
  it { should validate_uniqueness_of(:body) }
end
