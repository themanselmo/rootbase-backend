class Garden < ApplicationRecord
    belongs_to :organization 
    has_many :garden_tasks
    has_many :tasks, through: :garden_tasks
    
end
