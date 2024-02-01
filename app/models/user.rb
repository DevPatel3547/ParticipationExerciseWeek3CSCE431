class User < ApplicationRecord
  # Associations
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  # Add other necessary validations based on your application's requirements
  # For example:
  # validates :email, presence: true, uniqueness: true
end
