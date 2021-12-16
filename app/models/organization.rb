class Organization < ApplicationRecord
    has_many :employees 
    has_many :gardens 
    has_many :tasks 
    
    has_secure_password

    validates :name, presence: true, uniqueness: true

end
