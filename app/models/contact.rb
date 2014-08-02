class Contact < ActiveRecord::Base
    # Callback
    before_save { self.email = email.downcase }

    # email regex
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 75 }, format: { with: VALID_EMAIL_REGEX }
    validates :questions, presence: true
end
