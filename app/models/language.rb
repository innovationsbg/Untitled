class Language < ApplicationRecord
  belongs_to :post
  validates_uniqueness_of :language, scope: :post_id
end
