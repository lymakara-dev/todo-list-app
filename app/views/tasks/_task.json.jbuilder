json.extract! task, :id, :title, :description, :is_complete, :category_id, :created_at, :updated_at
json.url task_url(task, format: :json)
