require 'test_helper'

class ActivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activo = activos(:one)
  end

  test "should get index" do
    get activos_url
    assert_response :success
  end

  test "should get new" do
    get new_activo_url
    assert_response :success
  end

  test "should create activo" do
    assert_difference('Activo.count') do
      post activos_url, params: { activo: { Descripcion: @activo.Descripcion, fecha: @activo.fecha, monto: @activo.monto, sector: @activo.sector } }
    end

    assert_redirected_to activo_url(Activo.last)
  end

  test "should show activo" do
    get activo_url(@activo)
    assert_response :success
  end

  test "should get edit" do
    get edit_activo_url(@activo)
    assert_response :success
  end

  test "should update activo" do
    patch activo_url(@activo), params: { activo: { Descripcion: @activo.Descripcion, fecha: @activo.fecha, monto: @activo.monto, sector: @activo.sector } }
    assert_redirected_to activo_url(@activo)
  end

  test "should destroy activo" do
    assert_difference('Activo.count', -1) do
      delete activo_url(@activo)
    end

    assert_redirected_to activos_url
  end
end
