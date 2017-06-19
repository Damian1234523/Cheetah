class Text < ApplicationRecord
  belongs_to :exam
  has_many :comments
end
