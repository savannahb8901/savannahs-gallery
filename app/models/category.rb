# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many(:items, { :class_name => "Item", :foreign_key => "category_id" })

  has_many(:collection_categories, { :class_name => "CollectionCategory", :foreign_key => "category_id" })
  has_many(:collections, { :through => :collection_categories, :source => :collection })
end
