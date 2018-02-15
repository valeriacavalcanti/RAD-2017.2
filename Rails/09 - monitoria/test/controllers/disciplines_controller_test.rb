require 'test_helper'

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline = disciplines(:one)
  end

  test "should get index" do
    get disciplines_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_url
    assert_response :success
  end

  test "should create discipline" do
    assert_difference('Discipline.count') do
      post disciplines_url, params: { discipline: { abreviacao: @discipline.abreviacao, descricao: @discipline.descricao } }
    end

    assert_redirected_to discipline_url(Discipline.last)
  end

  test "should show discipline" do
    get discipline_url(@discipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_url(@discipline)
    assert_response :success
  end

  test "should update discipline" do
    patch discipline_url(@discipline), params: { discipline: { abreviacao: @discipline.abreviacao, descricao: @discipline.descricao } }
    assert_redirected_to discipline_url(@discipline)
  end

  test "should destroy discipline" do
    assert_difference('Discipline.count', -1) do
      delete discipline_url(@discipline)
    end

    assert_redirected_to disciplines_url
  end
end
