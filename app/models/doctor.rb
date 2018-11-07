class Doctor < ApplicationRecord
  belongs_to :user
  has_many :patient
  has_many :record
end
