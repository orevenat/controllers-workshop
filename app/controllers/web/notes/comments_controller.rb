# frozen_string_literal: true

class Web::Notes::CommentsController < Web::Notes::ApplicationController
  def new
    @comment = resource_note.comments.build
  end

  def create
    @comment = resource_note.comments.build(create_params)
    if @comment.save
      f(:success)
      redirect_to note_path(resource_note)
    else
      render :new
    end
  end

  private

  def create_params
    params.require(:note_comment).permit(:body).merge(user_id: current_user.id)
  end
end
