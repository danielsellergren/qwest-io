require "test_helper"

class SurveysControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @survey = surveys(:one)
    @question = questions(:one)
  end

  class AuthenticatedSurveysControllerTest < SurveysControllerTest
    test "should get new" do
      sign_in users(:one)
      
      get new_survey_url
      assert_response :success
    end
  
    test "should create survey" do
      sign_in users(:one)

      assert_difference("Survey.count") do
        post surveys_url, params: { survey: { user_id: @survey.user_id } }
      end

      assert_redirected_to user_url(users(:one))
    end
  end

  class UnauthenticatedSurveysControllerTest < SurveysControllerTest
    test "should get new and redirect to login" do
      get new_survey_url
      assert_response :redirect
    end
  end
end
