require 'test_helper'

class ThermostatsControllerTest < ActionController::TestCase
  setup do
    @thermostat = thermostats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermostats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermostat" do
    assert_difference('Thermostat.count') do
      post :create, thermostat: { serial: @thermostat.serial, user_id: @thermostat.user_id }
    end

    assert_redirected_to thermostat_path(assigns(:thermostat))
  end

  test "should show thermostat" do
    get :show, id: @thermostat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermostat
    assert_response :success
  end

  test "should update thermostat" do
    patch :update, id: @thermostat, thermostat: { serial: @thermostat.serial, user_id: @thermostat.user_id }
    assert_redirected_to thermostat_path(assigns(:thermostat))
  end

  test "should destroy thermostat" do
    assert_difference('Thermostat.count', -1) do
      delete :destroy, id: @thermostat
    end

    assert_redirected_to thermostats_path
  end
end
