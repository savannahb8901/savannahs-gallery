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
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:collection, { :class_name => "Collection", :foreign_key => "collection_id" })
  belongs_to(:item, { :required => true, :class_name => "Item", :foreign_key => "item_id", :counter_cache => true })
end
