require 'test_helper'

class SmallGroupsControllerTest < ActionController::TestCase
  setup do
    @small_group = small_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:small_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create small_group" do
    assert_difference('SmallGroup.count') do
      post :create, small_group: { initialPoints: @small_group.initialPoints, killsTotal: @small_group.killsTotal, killsWeek: @small_group.killsWeek, name: @small_group.name, numPledges: @small_group.numPledges, photosTotal: @small_group.photosTotal, photosWeek: @small_group.photosWeek, pointsTotal: @small_group.pointsTotal, pointsWeek: @small_group.pointsWeek, ptas: @small_group.ptas, throwdownPoints: @small_group.throwdownPoints }
    end

    assert_redirected_to small_group_path(assigns(:small_group))
  end

  test "should show small_group" do
    get :show, id: @small_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @small_group
    assert_response :success
  end

  test "should update small_group" do
    patch :update, id: @small_group, small_group: { initialPoints: @small_group.initialPoints, killsTotal: @small_group.killsTotal, killsWeek: @small_group.killsWeek, name: @small_group.name, numPledges: @small_group.numPledges, photosTotal: @small_group.photosTotal, photosWeek: @small_group.photosWeek, pointsTotal: @small_group.pointsTotal, pointsWeek: @small_group.pointsWeek, ptas: @small_group.ptas, throwdownPoints: @small_group.throwdownPoints }
    assert_redirected_to small_group_path(assigns(:small_group))
  end

  test "should destroy small_group" do
    assert_difference('SmallGroup.count', -1) do
      delete :destroy, id: @small_group
    end

    assert_redirected_to small_groups_path
  end
end
