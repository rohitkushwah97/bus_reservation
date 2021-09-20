class User < ApplicationRecord
	enum gender: [:male, :female]
	validates :first_name, :last_name, :phone_number, :age, presence: true
	validates :email, uniqueness: true
end
