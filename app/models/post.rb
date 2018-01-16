class Post < ApplicationRecord
  has_many :languages

  validates :title, presence: true

  accepts_nested_attributes_for :languages, reject_if: :all_blank
  validates_associated :languages
end
