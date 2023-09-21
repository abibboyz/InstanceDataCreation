require "application_system_test_case"

class VacanciesTest < ApplicationSystemTestCase
  setup do
    @vacancy = vacancies(:one)
  end

  test "visiting the index" do
    visit vacancies_url
    assert_selector "h1", text: "Vacancies"
  end

  test "should create vacancy" do
    visit vacancies_url
    click_on "New vacancy"

    fill_in "Site", with: @vacancy.site_id
    fill_in "Title", with: @vacancy.title
    click_on "Create Vacancy"

    assert_text "Vacancy was successfully created"
    click_on "Back"
  end

  test "should update Vacancy" do
    visit vacancy_url(@vacancy)
    click_on "Edit this vacancy", match: :first

    fill_in "Site", with: @vacancy.site_id
    fill_in "Title", with: @vacancy.title
    click_on "Update Vacancy"

    assert_text "Vacancy was successfully updated"
    click_on "Back"
  end

  test "should destroy Vacancy" do
    visit vacancy_url(@vacancy)
    click_on "Destroy this vacancy", match: :first

    assert_text "Vacancy was successfully destroyed"
  end
end
