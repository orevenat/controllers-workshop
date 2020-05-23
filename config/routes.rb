# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    resources :notes, only: %i[index new create]
  end
end
