# == Schema Information
#
# Table name: pieces
#
#  id          :integer          not null, primary key
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Piece < ApplicationRecord
end
