class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :employees
  has_many :tasks
end
