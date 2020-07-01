class User < ApplicationRecord

	VALID_REGEX_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, presence: true ,length: {maximum: 50}
	validates :email, presence: true , length: {maximum: 255},
						format: {with: VALID_REGEX_EMAIL}
	validates :phone_number, presence: true, length: {minimum: 10,maximum:10}

end
