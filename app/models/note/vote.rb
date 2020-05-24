# frozen_string_literal: true

class Note::Vote < ApplicationRecord
  belongs_to :user
  belongs_to :note

  enum status: { down: 0, up: 1 }
end
