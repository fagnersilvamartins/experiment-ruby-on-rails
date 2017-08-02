require 'test_helper'

class ProcuctsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procuct = procucts(:one)
  end

  test "should get index" do
    get procucts_url
    assert_response :success
  end

  test "should get new" do
    get new_procuct_url
    assert_response :success
  end

  test "should create procuct" do
    assert_difference('Procuct.count') do
      post procucts_url, params: { procuct: { name: @procuct.name } }
    end

    assert_redirected_to procuct_url(Procuct.last)
  end

  test "should show procuct" do
    get procuct_url(@procuct)
    assert_response :success
  end

  test "should get edit" do
    get edit_procuct_url(@procuct)
    assert_response :success
  end

  test "should update procuct" do
    patch procuct_url(@procuct), params: { procuct: { name: @procuct.name } }
    assert_redirected_to procuct_url(@procuct)
  end

  test "should destroy procuct" do
    assert_difference('Procuct.count', -1) do
      delete procuct_url(@procuct)
    end

    assert_redirected_to procucts_url
  end
end
