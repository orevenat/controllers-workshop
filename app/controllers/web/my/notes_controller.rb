# frozen_string_literal: true

class Web::My::NotesController < Web::ApplicationController
  def index
    @notes = current_user.notes
  end
end
