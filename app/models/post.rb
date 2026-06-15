class Post < ApplicationRecord
  # Validations. Title Length, or has to exist, and body length or has to exist
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :body, presence: true, length: { minimum: 10 }
end
