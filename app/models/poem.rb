class Poem < ApplicationRecord
  validates :title, presence: true
end
