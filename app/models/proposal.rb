class Proposal < ActiveRecord::Base

    # Callback
    before_save { self.email = email.downcase }

    # email regex
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :lead_presenter, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 75 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :school, presence: true
    validates :presentation_type, presence: true
    validates :title, presence: true
    validates :summary, presence: true
    validates :abstract, presence: true
    #validates_inclusion_of :presentation_type, :in => [true, false]
    #validates_inclusion_of :housing_needed, :in => [true, false]

end
