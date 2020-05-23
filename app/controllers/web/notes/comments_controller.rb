# frozen_string_literal: true

class Web::Notes::CommentsController < Web::ApplicationController
  def new
    @comment = note.comments.build
  end

  def create
    @comment = note.comments.build(create_params)
    if @comment.save
      f(:success)
      redirect_to notes_path
    else
      render :new
    end
  end

  private

  def note
    @note ||= Note.find(params[:note_id])
  end

  def create_params
    params.require(:note_comment).permit(:body).merge(user_id: current_user.id)
  end
end
