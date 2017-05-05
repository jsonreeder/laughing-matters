# == Schema Information
#
# Table name: riddles
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :riddle do
    body "MyText"
  end
end
