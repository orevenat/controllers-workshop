# frozen_string_literal: true

class Web::Notes::ApplicationController < Web::ApplicationController
  helper_method :resource_note

  def resource_note
    @resource_note ||= Note.find(params[:note_id])
  end
end
