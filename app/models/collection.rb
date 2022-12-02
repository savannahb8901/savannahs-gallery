# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  item_id     :integer
#
class Collection < ApplicationRecord
end
