# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  description :text
#  month       :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Collection < ApplicationRecord
  has_many(:items, { :class_name => "Item", :foreign_key => "collection_id" })
  has_many(:likes, { :class_name => "Like", :foreign_key => "collection_id" })
end
