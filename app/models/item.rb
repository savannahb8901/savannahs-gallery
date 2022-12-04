# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  caption        :string
#  comments_count :integer
#  image          :string
#  likes_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  collection_id  :integer
#
class Item < ApplicationRecord
  belongs_to(:collection, { :required => true, :class_name => "Collection", :foreign_key => "collection_id" })
  has_many(:comments, { :class_name => "Comment", :foreign_key => "item_id", :dependent => :destroy })
  has_many(:likes, { :class_name => "Like", :foreign_key => "item_id" })
end
