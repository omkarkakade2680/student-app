class Student < ApplicationRecord
	before_save { self.email = email.downcase }

	validates :name, presence:{:message=>"cant blank"}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    validates :gender, presence: true
	validates :passward, presence: true, length: { minimum: 6 }
	validates :address, presence: true
	validates :country, presence: true
	validates :passward, presence: true
end
