class Report < ApplicationRecord
  belongs_to :subscription

  # verifinar null
  validates :tipo, presence: true, inclusion: {in: %w(acompanhamento parcial final)}
end
