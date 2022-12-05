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
end
