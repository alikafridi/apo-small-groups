require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get feed" do
    get :feed
    assert_response :success
  end

  test "should get throwdowns-rules" do
    get :throwdowns-rules
    assert_response :success
  end

  test "should get throwdowns-current" do
    get :throwdowns-current
    assert_response :success
  end

  test "should get spoonwars-rules" do
    get :spoonwars-rules
    assert_response :success
  end

  test "should get spoonwars-pledge-roster" do
    get :spoonwars-pledge-roster
    assert_response :success
  end

  test "should get spoonwars-report-kill" do
    get :spoonwars-report-kill
    assert_response :success
  end

  test "should get spoonwars-wrongful-death" do
    get :spoonwars-wrongful-death
    assert_response :success
  end

  test "should get spoonwars-matchups" do
    get :spoonwars-matchups
    assert_response :success
  end

  test "should get spoonwars-scores" do
    get :spoonwars-scores
    assert_response :success
  end

  test "should get photo-rules" do
    get :photo-rules
    assert_response :success
  end

  test "should get photo-current" do
    get :photo-current
    assert_response :success
  end

  test "should get photo-submit" do
    get :photo-submit
    assert_response :success
  end

  test "should get points" do
    get :points
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
