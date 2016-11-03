class Company < ApplicationRecord
	has_many :jobs
	validates :name, presence: true,
					 length: { minimum: 1 }
end
