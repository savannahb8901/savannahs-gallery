class CollectionCategoriesController < ApplicationController
  def index
    matching_collection_categories = CollectionCategory.all

    @list_of_collection_categories = matching_collection_categories.order({ :created_at => :desc })


    render({ :template => "collection_categories/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_collection_categories = CollectionCategory.where({ :id => the_id })

    @the_collection_category = matching_collection_categories.at(0)

    render({ :template => "collection_categories/show.html.erb" })
  end

  def create
    the_collection_category = CollectionCategory.new
    the_collection_category.collection_id = params.fetch("query_collection_id")
    the_collection_category.category_id = params.fetch("query_category_id")

    if the_collection_category.valid?
      the_collection_category.save
      redirect_to("/collection_categories", { :notice => "Collection category created successfully." })
    else
      redirect_to("/collection_categories", { :alert => the_collection_category.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_collection_category = CollectionCategory.where({ :id => the_id }).at(0)

    the_collection_category.collection_id = params.fetch("query_collection_id")
    the_collection_category.category_id = params.fetch("query_category_id")

    if the_collection_category.valid?
      the_collection_category.save
      redirect_to("/collection_categories/#{the_collection_category.id}", { :notice => "Collection category updated successfully."} )
    else
      redirect_to("/collection_categories/#{the_collection_category.id}", { :alert => the_collection_category.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_collection_category = CollectionCategory.where({ :id => the_id }).at(0)

    the_collection_category.destroy

    redirect_to("/collection_categories", { :notice => "Collection category deleted successfully."} )
  end
end
