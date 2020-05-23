require 'test_helper'

class Web::My::NotesControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get my_notes_url
    assert_response :success
  end
end
