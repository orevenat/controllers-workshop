require 'test_helper'

class Web::Notes::CommentsControllerTest < ActionDispatch::IntegrationTest
  test '#new' do
    note = notes(:one)
    get new_note_comment_url(note)
    assert_response :success
  end

  test '#create' do
    note = notes(:one)
    body = <<~MD
      # Title

      - item
      - item
    MD
    post note_comments_url(note), params: { note_comment: {  body: body } }
    assert_response :redirect
  end
end
