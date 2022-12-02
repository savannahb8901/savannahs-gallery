# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  collection_id :integer
#  item_id       :integer
#  piece_id      :string
#  user_id       :integer
#
class Like < ApplicationRecord
end
