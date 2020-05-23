# frozen_string_literal: true

class Web::ApplicationController < ApplicationController
  include Flash

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.last
  end
end
