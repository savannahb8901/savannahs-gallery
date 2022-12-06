# == Schema Information
#
# Table name: pieces
#
#  id          :integer          not null, primary key
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Piece < ApplicationRecord

  belongs_to(:artist, { :class_name => "Gallery", :foreign_key => "user_id" })

end
