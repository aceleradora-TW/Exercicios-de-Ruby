require 'test_helper'

class GeofencesControllerTest < ActionController::TestCase
  setup do
    @geofence = geofences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geofences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geofence" do
    assert_difference('Geofence.count') do
      post :create, geofence: { lat: @geofence.lat, lon: @geofence.lon, name: @geofence.name, radius: @geofence.radius }
    end

    assert_redirected_to geofence_path(assigns(:geofence))
  end

  test "should show geofence" do
    get :show, id: @geofence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geofence
    assert_response :success
  end

  test "should update geofence" do
    patch :update, id: @geofence, geofence: { lat: @geofence.lat, lon: @geofence.lon, name: @geofence.name, radius: @geofence.radius }
    assert_redirected_to geofence_path(assigns(:geofence))
  end

  test "should destroy geofence" do
    assert_difference('Geofence.count', -1) do
      delete :destroy, id: @geofence
    end

    assert_redirected_to geofences_path
  end
end
