json.array!(@log_records) do |log_record|
  json.extract! log_record, :id, :log_file, :success_code, :attachment, :task_start_time, :task_end_time, :task_id
  json.url log_record_url(log_record, format: :json)
end
