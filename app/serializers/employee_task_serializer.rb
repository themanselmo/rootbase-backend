class EmployeeTaskSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :task 
  belongs_to :employee 
end
