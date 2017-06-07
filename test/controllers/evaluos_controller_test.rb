require 'test_helper'

class EvaluosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluo = evaluos(:one)
  end

  test "should get index" do
    get evaluos_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluo_url
    assert_response :success
  end

  test "should create evaluo" do
    assert_difference('Evaluo.count') do
      post evaluos_url, params: { evaluo: { Activo: @evaluo.Activo, descripcion: @evaluo.descripcion, fecha: @evaluo.fecha, integer: @evaluo.integer, montoactual: @evaluo.montoactual, tipo: @evaluo.tipo } }
    end

    assert_redirected_to evaluo_url(Evaluo.last)
  end

  test "should show evaluo" do
    get evaluo_url(@evaluo)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluo_url(@evaluo)
    assert_response :success
  end

  test "should update evaluo" do
    patch evaluo_url(@evaluo), params: { evaluo: { Activo: @evaluo.Activo, descripcion: @evaluo.descripcion, fecha: @evaluo.fecha, integer: @evaluo.integer, montoactual: @evaluo.montoactual, tipo: @evaluo.tipo } }
    assert_redirected_to evaluo_url(@evaluo)
  end

  test "should destroy evaluo" do
    assert_difference('Evaluo.count', -1) do
      delete evaluo_url(@evaluo)
    end

    assert_redirected_to evaluos_url
  end
end
