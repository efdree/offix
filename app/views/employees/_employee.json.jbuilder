json.extract! employee, :id, :name, :nationality, :email, :position, :department_id, :birth_date, :manager_id, :role, :created_at, :updated_at
json.url employee_url(employee, format: :json)
