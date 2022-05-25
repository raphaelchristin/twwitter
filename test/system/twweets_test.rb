require "application_system_test_case"

class TwweetsTest < ApplicationSystemTestCase
  setup do
    @twweet = twweets(:one)
  end

  test "visiting the index" do
    visit twweets_url
    assert_selector "h1", text: "Twweets"
  end

  test "should create twweet" do
    visit twweets_url
    click_on "New twweet"

    fill_in "Twweet", with: @twweet.twweet
    click_on "Create Twweet"

    assert_text "Twweet was successfully created"
    click_on "Back"
  end

  test "should update Twweet" do
    visit twweet_url(@twweet)
    click_on "Edit this twweet", match: :first

    fill_in "Twweet", with: @twweet.twweet
    click_on "Update Twweet"

    assert_text "Twweet was successfully updated"
    click_on "Back"
  end

  test "should destroy Twweet" do
    visit twweet_url(@twweet)
    click_on "Destroy this twweet", match: :first

    assert_text "Twweet was successfully destroyed"
  end
end
