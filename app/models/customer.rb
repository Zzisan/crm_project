class Customer < ApplicationRecord
  has_one_attached :image

  # Validations
  validates :full_name, presence: true

  # Allowlist searchable attributes for Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "notes", "phone_number", "updated_at"]
  end

  # (If you haven't already, allowlist associations too)
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
