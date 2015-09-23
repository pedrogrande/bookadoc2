require 'test_helper'

class PatientProfilesControllerTest < ActionController::TestCase
  setup do
    @patient_profile = patient_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_profile" do
    assert_difference('PatientProfile.count') do
      post :create, patient_profile: { address: @patient_profile.address, country: @patient_profile.country, first_name: @patient_profile.first_name, last_name: @patient_profile.last_name, latitude: @patient_profile.latitude, longitude: @patient_profile.longitude, medicare_number: @patient_profile.medicare_number, phone: @patient_profile.phone, postcode: @patient_profile.postcode, state: @patient_profile.state, suburb: @patient_profile.suburb, user_id: @patient_profile.user_id }
    end

    assert_redirected_to patient_profile_path(assigns(:patient_profile))
  end

  test "should show patient_profile" do
    get :show, id: @patient_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_profile
    assert_response :success
  end

  test "should update patient_profile" do
    patch :update, id: @patient_profile, patient_profile: { address: @patient_profile.address, country: @patient_profile.country, first_name: @patient_profile.first_name, last_name: @patient_profile.last_name, latitude: @patient_profile.latitude, longitude: @patient_profile.longitude, medicare_number: @patient_profile.medicare_number, phone: @patient_profile.phone, postcode: @patient_profile.postcode, state: @patient_profile.state, suburb: @patient_profile.suburb, user_id: @patient_profile.user_id }
    assert_redirected_to patient_profile_path(assigns(:patient_profile))
  end

  test "should destroy patient_profile" do
    assert_difference('PatientProfile.count', -1) do
      delete :destroy, id: @patient_profile
    end

    assert_redirected_to patient_profiles_path
  end
end
