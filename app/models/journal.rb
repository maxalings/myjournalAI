class Journal < ApplicationRecord
  belongs_to :user
  has_many :journalpages, dependent: :destroy
end
