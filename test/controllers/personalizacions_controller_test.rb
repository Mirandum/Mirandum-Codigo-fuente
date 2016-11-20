require 'test_helper'

class PersonalizacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personalizacion = personalizacions(:one)
  end

  test "should get index" do
    get personalizacions_url
    assert_response :success
  end

  test "should get new" do
    get new_personalizacion_url
    assert_response :success
  end

  test "should create personalizacion" do
    assert_difference('Personalizacion.count') do
      post personalizacions_url, params: { personalizacion: { color: @personalizacion.color, cover: @personalizacion.cover, descripcion: @personalizacion.descripcion, fechaSolicitada: @personalizacion.fechaSolicitada, user_id: @personalizacion.user_id } }
    end

    assert_redirected_to personalizacion_url(Personalizacion.last)
  end

  test "should show personalizacion" do
    get personalizacion_url(@personalizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_personalizacion_url(@personalizacion)
    assert_response :success
  end

  test "should update personalizacion" do
    patch personalizacion_url(@personalizacion), params: { personalizacion: { color: @personalizacion.color, cover: @personalizacion.cover, descripcion: @personalizacion.descripcion, fechaSolicitada: @personalizacion.fechaSolicitada, user_id: @personalizacion.user_id } }
    assert_redirected_to personalizacion_url(@personalizacion)
  end

  test "should destroy personalizacion" do
    assert_difference('Personalizacion.count', -1) do
      delete personalizacion_url(@personalizacion)
    end

    assert_redirected_to personalizacions_url
  end
end
