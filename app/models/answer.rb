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

class Answer < ApplicationRecord
  validates :body, presence: true, uniqueness: { scope: :riddle_id }
  validates :riddle_id, presence: true
end
