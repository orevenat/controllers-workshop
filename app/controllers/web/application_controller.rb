# frozen_string_literal: true

class Web::ApplicationController < ApplicationController
  include Flash

  private

  def current_user
    @current_user ||= User.last
  end
end
