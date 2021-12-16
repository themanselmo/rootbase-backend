class GardenTask < ApplicationRecord
    belongs_to :garden 
    belongs_to :task
    
end
