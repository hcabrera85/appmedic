require 'test_helper'

class AssistantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistant = assistants(:one)
  end

  test "should get index" do
    get assistants_url
    assert_response :success
  end

  test "should get new" do
    get new_assistant_url
    assert_response :success
  end

  test "should create assistant" do
    assert_difference('Assistant.count') do
      post assistants_url, params: { assistant: { address: @assistant.address, contactperson: @assistant.contactperson, date_of_birth: @assistant.date_of_birth, email: @assistant.email, gender: @assistant.gender, idcard: @assistant.idcard, marital: @assistant.marital, nacionality: @assistant.nacionality, name: @assistant.name, occupation: @assistant.occupation, status: @assistant.status, telephone: @assistant.telephone, user_id: @assistant.user_id } }
    end

    assert_redirected_to assistant_url(Assistant.last)
  end

  test "should show assistant" do
    get assistant_url(@assistant)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistant_url(@assistant)
    assert_response :success
  end

  test "should update assistant" do
    patch assistant_url(@assistant), params: { assistant: { address: @assistant.address, contactperson: @assistant.contactperson, date_of_birth: @assistant.date_of_birth, email: @assistant.email, gender: @assistant.gender, idcard: @assistant.idcard, marital: @assistant.marital, nacionality: @assistant.nacionality, name: @assistant.name, occupation: @assistant.occupation, status: @assistant.status, telephone: @assistant.telephone, user_id: @assistant.user_id } }
    assert_redirected_to assistant_url(@assistant)
  end

  test "should destroy assistant" do
    assert_difference('Assistant.count', -1) do
      delete assistant_url(@assistant)
    end

    assert_redirected_to assistants_url
  end
end
