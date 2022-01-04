class GardenSerializer < ActiveModel::Serializer
  attributes :id, :crop, :name, :organization_id
  has_many :tasks
end
