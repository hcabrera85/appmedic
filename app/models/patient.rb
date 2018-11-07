class Patient < ApplicationRecord
  belongs_to :user
  has_many :doctor
  has_many :appointment
  has_many :record  
end
