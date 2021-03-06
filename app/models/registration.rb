class Registration < ActiveRecord::Base

    # Callback
    before_save { self.email = email.downcase }

    # email regex
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 75 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :school, presence: true
    validates_inclusion_of :presenter, :in => [true, false]
    validates_inclusion_of :housing_needed, :in => [true, false]
end
