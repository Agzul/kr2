class Film < ApplicationRecord
  belongs_to :film_company
  has_one :description
end
