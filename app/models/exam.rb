class Exam < ApplicationRecord
  belongs_to :lecturer
  has_many :texts
end
