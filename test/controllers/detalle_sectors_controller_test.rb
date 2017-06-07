require 'test_helper'

class DetalleSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_sector = detalle_sectors(:one)
  end

  test "should get index" do
    get detalle_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_sector_url
    assert_response :success
  end

  test "should create detalle_sector" do
    assert_difference('DetalleSector.count') do
      post detalle_sectors_url, params: { detalle_sector: { empleado: @detalle_sector.empleado, sector: @detalle_sector.sector } }
    end

    assert_redirected_to detalle_sector_url(DetalleSector.last)
  end

  test "should show detalle_sector" do
    get detalle_sector_url(@detalle_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_sector_url(@detalle_sector)
    assert_response :success
  end

  test "should update detalle_sector" do
    patch detalle_sector_url(@detalle_sector), params: { detalle_sector: { empleado: @detalle_sector.empleado, sector: @detalle_sector.sector } }
    assert_redirected_to detalle_sector_url(@detalle_sector)
  end

  test "should destroy detalle_sector" do
    assert_difference('DetalleSector.count', -1) do
      delete detalle_sector_url(@detalle_sector)
    end

    assert_redirected_to detalle_sectors_url
  end
end
