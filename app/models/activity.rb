class Activity < ApplicationRecord
  # Constants for lookup - could be seperate tables
  CATEGORY = [
    "restaurant",
    "park",
    "dog bin"
  ]

  RESTAURANT_TYPE = [
    "italian",
    "indian",
    "chinese",
    "fast food",
    "cafe",
    nil
  ]

  PARK_FEATURE = [
    "pond",
    "dog play area",
    "playground",
    "water fountain",
    nil
  ]

  # associations
  include Locatable
  belongs_to :user
  has_many :reviews

  # validations
  validates :name, presence: true
  validates :description, length: { minimum: 6, maximum: 500 }
  validates :category, inclusion: CATEGORY
  validates :restaurant_type, inclusion: RESTAURANT_TYPE
  validates :park_feature, inclusion: PARK_FEATURE
end
