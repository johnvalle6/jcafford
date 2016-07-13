require 'test_helper'

class NewaplicationsControllerTest < ActionController::TestCase
  setup do
    @newaplication = newaplications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newaplications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newaplication" do
    assert_difference('Newaplication.count') do
      post :create, newaplication: {  }
    end

    assert_redirected_to newaplication_path(assigns(:newaplication))
  end

  test "should show newaplication" do
    get :show, id: @newaplication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newaplication
    assert_response :success
  end

  test "should update newaplication" do
    patch :update, id: @newaplication, newaplication: {  }
    assert_redirected_to newaplication_path(assigns(:newaplication))
  end

  test "should destroy newaplication" do
    assert_difference('Newaplication.count', -1) do
      delete :destroy, id: @newaplication
    end

    assert_redirected_to newaplications_path
  end
end
