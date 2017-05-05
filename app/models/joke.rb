# == Schema Information
#
# Table name: jokes
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Joke < ApplicationRecord
end
