require 'test_helper'

class Web::NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_notes_index_url
    assert_response :success
  end

end
