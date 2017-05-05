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

FactoryGirl.define do
  factory :answer do
    body "MyText"
    riddle_id 1
  end
end
