class Subscription < ApplicationRecord
  belongs_to :discipline
  belongs_to :semester
  belongs_to :student
end
