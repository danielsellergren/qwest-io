class Question < ApplicationRecord
  validates :prompt, presence: true
end
