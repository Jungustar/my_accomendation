class Review < ApplicationRecord
  belongs_to :accomendation
  validates :content, presence: true
end
