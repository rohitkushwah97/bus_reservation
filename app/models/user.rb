class User < ApplicationRecord
	enum gender: [:male, :female]
	# validates :first_name, :last_name, :email, :phone_number, :age, presence: true
end
