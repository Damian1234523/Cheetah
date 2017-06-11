class Text < ApplicationRecord
  belongs_to :exam
  acts_as_commontable
end
