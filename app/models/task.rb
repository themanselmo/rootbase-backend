class Task < ApplicationRecord
    belongs_to :organization
    has_many :employees, through: :employee_tasks
    has_many :gardens, through: :garden_tasks
end
