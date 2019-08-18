class Accomendation < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true
  validates :rent, presence: true
end
