require "application_system_test_case"

class JobseekersTest < ApplicationSystemTestCase
  setup do
    @jobseeker = jobseekers(:one)
  end

  test "visiting the index" do
    visit jobseekers_url
    assert_selector "h1", text: "Jobseekers"
  end

  test "should create jobseeker" do
    visit jobseekers_url
    click_on "New jobseeker"

    fill_in "Email", with: @jobseeker.email
    fill_in "Full name", with: @jobseeker.full_name
    fill_in "Site", with: @jobseeker.site_id
    click_on "Create Jobseeker"

    assert_text "Jobseeker was successfully created"
    click_on "Back"
  end

  test "should update Jobseeker" do
    visit jobseeker_url(@jobseeker)
    click_on "Edit this jobseeker", match: :first

    fill_in "Email", with: @jobseeker.email
    fill_in "Full name", with: @jobseeker.full_name
    fill_in "Site", with: @jobseeker.site_id
    click_on "Update Jobseeker"

    assert_text "Jobseeker was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobseeker" do
    visit jobseeker_url(@jobseeker)
    click_on "Destroy this jobseeker", match: :first

    assert_text "Jobseeker was successfully destroyed"
  end
end
