class Record < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_many_attached :images
end
