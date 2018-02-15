class Subscription < ApplicationRecord
  belongs_to :discipline
  belongs_to :semester
  belongs_to :student

  has_many :reports

  accepts_nested_attributes_for :reports, 
  								reject_if: :all_blank, 
  								allow_destroy: true
end
