# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    resources :notes, only: %i[index new create] do
      scope module: :notes do
        resources :comments, only: %i[new create]
      end
    end

    namespace :my do
      resources :notes, only: %i[index]
    end
  end
end
