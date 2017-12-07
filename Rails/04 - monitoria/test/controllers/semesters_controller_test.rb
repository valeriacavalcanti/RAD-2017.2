require 'test_helper'

class SemestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @semester = semesters(:one)
  end

  test "should get index" do
    get semesters_url
    assert_response :success
  end

  test "should get new" do
    get new_semester_url
    assert_response :success
  end

  test "should create semester" do
    assert_difference('Semester.count') do
      post semesters_url, params: { semester: { ano: @semester.ano, fim: @semester.fim, inicio: @semester.inicio, periodo: @semester.periodo } }
    end

    assert_redirected_to semester_url(Semester.last)
  end

  test "should show semester" do
    get semester_url(@semester)
    assert_response :success
  end

  test "should get edit" do
    get edit_semester_url(@semester)
    assert_response :success
  end

  test "should update semester" do
    patch semester_url(@semester), params: { semester: { ano: @semester.ano, fim: @semester.fim, inicio: @semester.inicio, periodo: @semester.periodo } }
    assert_redirected_to semester_url(@semester)
  end

  test "should destroy semester" do
    assert_difference('Semester.count', -1) do
      delete semester_url(@semester)
    end

    assert_redirected_to semesters_url
  end
end
