require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    @survey = surveys(:one)
    sign_in users(:one)
  end

  test "should create survey" do
    visit root_url
    click_on "Get Started"

    fill_in "survey[responses_attributes][0][answer]", with: "Dog"
    fill_in "survey[responses_attributes][1][answer]", with: "Cat"
    click_on "Submit"

    assert_text "Survey was successfully created"
    assert_text users(:one).email
    assert_text "Dog"
    assert_text "Cat"
  end
end
