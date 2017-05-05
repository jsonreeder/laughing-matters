# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  riddle_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:riddle_id) }

  # Make sure there is a riddle for foreign key reference in uniqueness spec
  Riddle.create(body: 'Why did the chicken cross the road?')
  riddle = Riddle.find_by_body('Why did the chicken cross the road?')

  # Set values for body and riddle_id so that there are no null errors in
  # uniqueness spec
  Answer.create(body: 'To get to the other side', riddle_id: riddle.id)

  it { should validate_uniqueness_of(:body).scoped_to(:riddle_id) }
end
