require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Created By", with: @record.created_by
    fill_in "Date Time", with: @record.date_time
    fill_in "Diagnostic", with: @record.diagnostic
    fill_in "Doctor", with: @record.doctor_id
    fill_in "Notes", with: @record.notes
    fill_in "Patient", with: @record.patient_id
    fill_in "Status", with: @record.status
    fill_in "Symptom", with: @record.symptom
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Created By", with: @record.created_by
    fill_in "Date Time", with: @record.date_time
    fill_in "Diagnostic", with: @record.diagnostic
    fill_in "Doctor", with: @record.doctor_id
    fill_in "Notes", with: @record.notes
    fill_in "Patient", with: @record.patient_id
    fill_in "Status", with: @record.status
    fill_in "Symptom", with: @record.symptom
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
