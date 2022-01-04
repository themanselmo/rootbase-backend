class Task < ApplicationRecord
    belongs_to :organization
    has_many :employee_tasks
    has_many :garden_tasks
    has_many :employees, through: :employee_tasks
    has_many :gardens, through: :garden_tasks
    has_many :comments
end
