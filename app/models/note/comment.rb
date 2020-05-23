# frozen_string_literal: true

class Note::Comment < ApplicationRecord
  belongs_to :user
  belongs_to :note
end
