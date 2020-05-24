# frozen_string_literal: true

class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :note_votes, class_name: 'Note::Vote', dependent: :destroy

  has_secure_password
end
