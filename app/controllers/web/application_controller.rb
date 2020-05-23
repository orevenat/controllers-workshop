# frozen_string_literal: true

class Web::ApplicationController < ApplicationController
  private

  def current_user
    @current_user ||= User.find(1)
  end
end
