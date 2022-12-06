# == Schema Information
#
# Table name: collection_categories
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  collection_id :integer
#
class CollectionCategory < ApplicationRecord
  belongs_to(:collection, { :required => true, :class_name => "Collection", :foreign_key => "collection_id" })
  belongs_to(:category, { :required => true, :class_name => "Category", :foreign_key => "category_id" })
end
