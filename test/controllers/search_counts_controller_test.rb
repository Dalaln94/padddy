require 'test_helper'

class SearchCountsControllerTest < ActionController::TestCase
  setup do
    @search_count = search_counts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_counts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_count" do
    assert_difference('SearchCount.count') do
      post :create, search_count: { counter: @search_count.counter }
    end

    assert_redirected_to search_count_path(assigns(:search_count))
  end

  test "should show search_count" do
    get :show, id: @search_count
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_count
    assert_response :success
  end

  test "should update search_count" do
    patch :update, id: @search_count, search_count: { counter: @search_count.counter }
    assert_redirected_to search_count_path(assigns(:search_count))
  end

  test "should destroy search_count" do
    assert_difference('SearchCount.count', -1) do
      delete :destroy, id: @search_count
    end

    assert_redirected_to search_counts_path
  end
end
