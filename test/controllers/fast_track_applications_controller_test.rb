require 'test_helper'

class FastTrackApplicationsControllerTest < ActionController::TestCase
  setup do
    @fast_track_application = fast_track_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fast_track_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fast_track_application" do
    assert_difference('FastTrackApplication.count') do
      post :create, fast_track_application: { age: @fast_track_application.age, challenge: @fast_track_application.challenge, city: @fast_track_application.city, country: @fast_track_application.country, email: @fast_track_application.email, experience: @fast_track_application.experience, first_name: @fast_track_application.first_name, gender: @fast_track_application.gender, info: @fast_track_application.info, last_name: @fast_track_application.last_name, links: @fast_track_application.links, one_line: @fast_track_application.one_line, passion: @fast_track_application.passion, programme_choice: @fast_track_application.programme_choice, reason: @fast_track_application.reason, referral: @fast_track_application.referral, special: @fast_track_application.special, visa: @fast_track_application.visa }
    end

    assert_redirected_to fast_track_application_path(assigns(:fast_track_application))
  end

  test "should show fast_track_application" do
    get :show, id: @fast_track_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fast_track_application
    assert_response :success
  end

  test "should update fast_track_application" do
    patch :update, id: @fast_track_application, fast_track_application: { age: @fast_track_application.age, challenge: @fast_track_application.challenge, city: @fast_track_application.city, country: @fast_track_application.country, email: @fast_track_application.email, experience: @fast_track_application.experience, first_name: @fast_track_application.first_name, gender: @fast_track_application.gender, info: @fast_track_application.info, last_name: @fast_track_application.last_name, links: @fast_track_application.links, one_line: @fast_track_application.one_line, passion: @fast_track_application.passion, programme_choice: @fast_track_application.programme_choice, reason: @fast_track_application.reason, referral: @fast_track_application.referral, special: @fast_track_application.special, visa: @fast_track_application.visa }
    assert_redirected_to fast_track_application_path(assigns(:fast_track_application))
  end

  test "should destroy fast_track_application" do
    assert_difference('FastTrackApplication.count', -1) do
      delete :destroy, id: @fast_track_application
    end

    assert_redirected_to fast_track_applications_path
  end
end
