class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :due_date
  
  has_many :employees 
  has_many :gardens
end
