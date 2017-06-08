require 'test_helper'

class EncargadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encargado = encargados(:one)
  end

  test "should get index" do
    get encargados_url
    assert_response :success
  end

  test "should get new" do
    #get :new_encargados
    get new_encargado_url
    assert_response :success
  end

  test "should create encargado" do
    assert_difference('Encargado.count') do
      post encargados_url, params: { encargado: { correo: @encargado.correo, nombre: @encargado.nombre, telefono: @encargado.telefono } }
    end

    assert_redirected_to encargado_url(Encargado.last)
  end

  test "should show encargado" do
    get encargado_url(@encargado)
    assert_response :success
  end

  test "should get edit" do
    get edit_encargado_url(@encargado)
    assert_response :success
  end

  test "should update encargado" do
    patch encargado_url(@encargado), params: { encargado: { correo: @encargado.correo, nombre: @encargado.nombre, telefono: @encargado.telefono } }
    assert_redirected_to encargado_url(@encargado)
  end

  test "should destroy encargado" do
    assert_difference('Encargado.count', -1) do
      delete encargado_url(@encargado)
    end

    assert_redirected_to encargados_url
  end
end
