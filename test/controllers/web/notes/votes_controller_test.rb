# frozen_string_literal: true

require 'test_helper'

class Web::Notes::VotesControllerTest < ActionDispatch::IntegrationTest
  test '#create' do
    note = notes(:one)
    post note_votes_url(note), params: { status: 'up' }
    assert_response :redirect
  end

  test 'update' do
    note = notes(:one)
    vote = note.votes.first
    patch note_vote_url(note, vote), params: { status: 'down' }
    assert_response :redirect
  end
end
