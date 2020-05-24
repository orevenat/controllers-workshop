# frozen_string_literal: true

require 'test_helper'

class Web::NotesControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get notes_url
    assert_response :success
  end

  test '#new' do
    get new_note_url
    assert_response :success
  end

  test '#create' do
    title = 'title'
    body = <<~MD
      # Title

      - item
      - item
    MD
    post notes_url, params: { note: { title: title, body: body } }
    assert_response :redirect
  end
end
