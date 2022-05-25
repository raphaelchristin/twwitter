require "test_helper"

class TwweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twweet = twweets(:one)
  end

  test "should get index" do
    get twweets_url
    assert_response :success
  end

  test "should get new" do
    get new_twweet_url
    assert_response :success
  end

  test "should create twweet" do
    assert_difference("Twweet.count") do
      post twweets_url, params: { twweet: { twweet: @twweet.twweet } }
    end

    assert_redirected_to twweet_url(Twweet.last)
  end

  test "should show twweet" do
    get twweet_url(@twweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_twweet_url(@twweet)
    assert_response :success
  end

  test "should update twweet" do
    patch twweet_url(@twweet), params: { twweet: { twweet: @twweet.twweet } }
    assert_redirected_to twweet_url(@twweet)
  end

  test "should destroy twweet" do
    assert_difference("Twweet.count", -1) do
      delete twweet_url(@twweet)
    end

    assert_redirected_to twweets_url
  end
end
