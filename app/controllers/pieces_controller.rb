class PiecesController < ApplicationController
  def index
    matching_pieces = Piece.all

    @list_of_pieces = matching_pieces.order({ :created_at => :desc })

    render({ :template => "pieces/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_pieces = Piece.where({ :id => the_id })

    @the_piece = matching_pieces.at(0)

    render({ :template => "pieces/show.html.erb" })
  end

  def create
    the_piece = Piece.new
    the_piece.user_id = params.fetch("query_user_id")
    the_piece.description = params.fetch("query_description")
    the_piece.image = params.fetch("query_image")

    if the_piece.valid?
      the_piece.save
      redirect_to("/pieces", { :notice => "Piece created successfully." })
    else
      redirect_to("/pieces", { :alert => the_piece.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_piece = Piece.where({ :id => the_id }).at(0)

    the_piece.user_id = params.fetch("query_user_id")
    the_piece.description = params.fetch("query_description")
    the_piece.image = params.fetch("query_image")

    if the_piece.valid?
      the_piece.save
      redirect_to("/pieces/#{the_piece.id}", { :notice => "Piece updated successfully."} )
    else
      redirect_to("/pieces/#{the_piece.id}", { :alert => the_piece.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_piece = Piece.where({ :id => the_id }).at(0)

    the_piece.destroy

    redirect_to("/pieces", { :notice => "Piece deleted successfully."} )
  end
end
