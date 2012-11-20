require 'test_helper'

class TripStatesControllerTest < ActionController::TestCase
  setup do
    @trip_state = trip_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_state" do
    assert_difference('TripState.count') do
      post :create, :trip_state => { :state => @trip_state.state }
    end

    assert_redirected_to trip_state_path(assigns(:trip_state))
  end

  test "should show trip_state" do
    get :show, :id => @trip_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trip_state
    assert_response :success
  end

  test "should update trip_state" do
    put :update, :id => @trip_state, :trip_state => { :state => @trip_state.state }
    assert_redirected_to trip_state_path(assigns(:trip_state))
  end

  test "should destroy trip_state" do
    assert_difference('TripState.count', -1) do
      delete :destroy, :id => @trip_state
    end

    assert_redirected_to trip_states_path
  end
end
