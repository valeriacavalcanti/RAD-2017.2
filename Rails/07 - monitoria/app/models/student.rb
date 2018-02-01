class Student < ApplicationRecord
	has_one :contact

	accepts_nested_attributes_for :contact
end
