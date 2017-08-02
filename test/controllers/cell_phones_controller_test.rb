require 'test_helper'

class CellPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell_phone = cell_phones(:one)
  end

  test "should get index" do
    get cell_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_cell_phone_url
    assert_response :success
  end

  test "should create cell_phone" do
    assert_difference('CellPhone.count') do
      post cell_phones_url, params: { cell_phone: { name: @cell_phone.name, quant: @cell_phone.quant } }
    end

    assert_redirected_to cell_phone_url(CellPhone.last)
  end

  test "should show cell_phone" do
    get cell_phone_url(@cell_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_cell_phone_url(@cell_phone)
    assert_response :success
  end

  test "should update cell_phone" do
    patch cell_phone_url(@cell_phone), params: { cell_phone: { name: @cell_phone.name, quant: @cell_phone.quant } }
    assert_redirected_to cell_phone_url(@cell_phone)
  end

  test "should destroy cell_phone" do
    assert_difference('CellPhone.count', -1) do
      delete cell_phone_url(@cell_phone)
    end

    assert_redirected_to cell_phones_url
  end
end
