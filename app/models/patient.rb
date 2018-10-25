class Patient < ApplicationRecord
  has_many :appointments
  has_many :dotors, through :appointments
end
