require 'test_helper'

class JobLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_label = job_labels(:one)
  end

  test "should get index" do
    get job_labels_url, as: :json
    assert_response :success
  end

  test "should create job_label" do
    assert_difference('JobLabel.count') do
      post job_labels_url, params: { job_label: { job_id: @job_label.job_id, label_id: @job_label.label_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job_label" do
    get job_label_url(@job_label), as: :json
    assert_response :success
  end

  test "should update job_label" do
    patch job_label_url(@job_label), params: { job_label: { job_id: @job_label.job_id, label_id: @job_label.label_id } }, as: :json
    assert_response 200
  end

  test "should destroy job_label" do
    assert_difference('JobLabel.count', -1) do
      delete job_label_url(@job_label), as: :json
    end

    assert_response 204
  end
end
