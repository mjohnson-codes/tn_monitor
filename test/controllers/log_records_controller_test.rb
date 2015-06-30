require 'test_helper'

class LogRecordsControllerTest < ActionController::TestCase
  setup do
    @log_record = log_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_record" do
    assert_difference('LogRecord.count') do
      post :create, log_record: { attachment: @log_record.attachment, log_file: @log_record.log_file, success_code: @log_record.success_code, task_end_time: @log_record.task_end_time, task_id: @log_record.task_id, task_start_time: @log_record.task_start_time }
    end

    assert_redirected_to log_record_path(assigns(:log_record))
  end

  test "should show log_record" do
    get :show, id: @log_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log_record
    assert_response :success
  end

  test "should update log_record" do
    patch :update, id: @log_record, log_record: { attachment: @log_record.attachment, log_file: @log_record.log_file, success_code: @log_record.success_code, task_end_time: @log_record.task_end_time, task_id: @log_record.task_id, task_start_time: @log_record.task_start_time }
    assert_redirected_to log_record_path(assigns(:log_record))
  end

  test "should destroy log_record" do
    assert_difference('LogRecord.count', -1) do
      delete :destroy, id: @log_record
    end

    assert_redirected_to log_records_path
  end
end
