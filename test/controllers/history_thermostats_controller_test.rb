require 'test_helper'

class HistoryThermostatsControllerTest < ActionController::TestCase
  setup do
    @history_thermostat = history_thermostats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_thermostats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_thermostat" do
    assert_difference('HistoryThermostat.count') do
      post :create, history_thermostat: { humidity: @history_thermostat.humidity, saving: @history_thermostat.saving, temperature: @history_thermostat.temperature, thermostat_id: @history_thermostat.thermostat_id }
    end

    assert_redirected_to history_thermostat_path(assigns(:history_thermostat))
  end

  test "should show history_thermostat" do
    get :show, id: @history_thermostat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_thermostat
    assert_response :success
  end

  test "should update history_thermostat" do
    patch :update, id: @history_thermostat, history_thermostat: { humidity: @history_thermostat.humidity, saving: @history_thermostat.saving, temperature: @history_thermostat.temperature, thermostat_id: @history_thermostat.thermostat_id }
    assert_redirected_to history_thermostat_path(assigns(:history_thermostat))
  end

  test "should destroy history_thermostat" do
    assert_difference('HistoryThermostat.count', -1) do
      delete :destroy, id: @history_thermostat
    end

    assert_redirected_to history_thermostats_path
  end
end
