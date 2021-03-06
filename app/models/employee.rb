class Employee < ApplicationRecord
    belongs_to :organization 
    has_many :employee_tasks
    has_many :tasks, through: :employee_tasks
    
    has_one_attached :avatar
    
    validates :name, presence: :true 
    validates :pin, presence: :true
end
