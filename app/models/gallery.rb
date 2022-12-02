# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  piece_id   :integer
#
class Gallery < ApplicationRecord
end
