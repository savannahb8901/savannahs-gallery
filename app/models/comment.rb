# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer
#  user_id    :integer
#
class Comment < ApplicationRecord
end
