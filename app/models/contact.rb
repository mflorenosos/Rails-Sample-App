class Contact < ApplicationRecord
	validates :full_name, :email, presence: true
	validates_uniqueness_of :email

	has_and_belongs_to_many :interests

	scope :gender, -> (gender) { where(gender:gender) }
	scope :males, -> {gender('m')}
	scope :females, -> do
		gender('f')
	end
end
