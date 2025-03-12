class Customer < ApplicationRecord
    has_one_attached :image
  
    # Validations
    validates :full_name, presence: true
    # Optionally, add further validations
    # validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  end
  