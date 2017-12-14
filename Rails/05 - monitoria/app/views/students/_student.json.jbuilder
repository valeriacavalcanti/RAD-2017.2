json.extract! student, :id, :nome, :matricula, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
