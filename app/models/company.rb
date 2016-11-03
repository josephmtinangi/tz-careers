class Company < ApplicationRecord
	has_many :jobs, dependent: :destroy
	validates :name, presence: true,
					 length: { minimum: 1 }
end
