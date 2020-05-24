# frozen_string_literal: true

class Web::NotesController < Web::ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
    @note_comments = @note.comments
  end

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(create_params)
    if @note.save
      f(:success)
      redirect_to notes_path
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:note).permit(:title, :body)
  end
end
