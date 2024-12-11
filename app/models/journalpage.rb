class Journalpage < ApplicationRecord
  belongs_to :journal

  validates :answer, format: { with: /\A[a-zA-Z0-9\s]*\z/, message: "only allows letters, numbers, and spaces" }
end
