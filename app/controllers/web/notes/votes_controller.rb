# frozen_string_literal: true

class Web::Notes::VotesController < Web::Notes::ApplicationController
  def create
    vote = resource_note.votes.build
    vote.user = current_user
    if vote.save
      f(:succes)
    else
      f(:error, vote.errors.full_messages.to_sentence)
    end

    redirect_to note_path(resource_note)
  end

  def update
    vote = Note::Vote.find(params[:id])
    vote.update(update_params)

    redirect_to note_path(resource_note)
  end

  private

  def update_params
    params.permit(:status)
  end
end
