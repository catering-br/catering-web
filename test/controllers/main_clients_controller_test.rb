require 'test_helper'

class MainClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_client = main_clients(:one)
  end

  test "should get index" do
    get main_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_main_client_url
    assert_response :success
  end

  test "should create main_client" do
    assert_difference('MainClient.count') do
      post main_clients_url, params: { main_client: { Product: @main_client.Product, Quantidade: @main_client.Quantidade } }
    end

    assert_redirected_to main_client_url(MainClient.last)
  end

  test "should show main_client" do
    get main_client_url(@main_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_client_url(@main_client)
    assert_response :success
  end

  test "should update main_client" do
    patch main_client_url(@main_client), params: { main_client: { Product: @main_client.Product, Quantidade: @main_client.Quantidade } }
    assert_redirected_to main_client_url(@main_client)
  end

  test "should destroy main_client" do
    assert_difference('MainClient.count', -1) do
      delete main_client_url(@main_client)
    end

    assert_redirected_to main_clients_url
  end
end
