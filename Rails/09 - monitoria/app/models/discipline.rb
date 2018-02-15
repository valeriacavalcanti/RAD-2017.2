class Discipline < ApplicationRecord
	has_many :subscriptions

	validates :abreviacao, presence: true
	validates :descricao, presence: true
end
