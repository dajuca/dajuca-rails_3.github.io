class Dog < ApplicationRecord
  belongs_to :city, optional:true
  has_many :dogsitters, through: :strolls
end
