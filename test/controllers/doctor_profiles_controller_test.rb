require 'test_helper'

class DoctorProfilesControllerTest < ActionController::TestCase
  setup do
    @doctor_profile = doctor_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_profile" do
    assert_difference('DoctorProfile.count') do
      post :create, doctor_profile: { bio: @doctor_profile.bio, first_name: @doctor_profile.first_name, last_name: @doctor_profile.last_name, photo: @doctor_profile.photo, post_nominals: @doctor_profile.post_nominals, title: @doctor_profile.title, user_id: @doctor_profile.user_id }
    end

    assert_redirected_to doctor_profile_path(assigns(:doctor_profile))
  end

  test "should show doctor_profile" do
    get :show, id: @doctor_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_profile
    assert_response :success
  end

  test "should update doctor_profile" do
    patch :update, id: @doctor_profile, doctor_profile: { bio: @doctor_profile.bio, first_name: @doctor_profile.first_name, last_name: @doctor_profile.last_name, photo: @doctor_profile.photo, post_nominals: @doctor_profile.post_nominals, title: @doctor_profile.title, user_id: @doctor_profile.user_id }
    assert_redirected_to doctor_profile_path(assigns(:doctor_profile))
  end

  test "should destroy doctor_profile" do
    assert_difference('DoctorProfile.count', -1) do
      delete :destroy, id: @doctor_profile
    end

    assert_redirected_to doctor_profiles_path
  end
end
