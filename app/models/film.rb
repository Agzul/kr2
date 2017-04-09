class Film < ApplicationRecord
  belongs_to :film_company
  has_one :description

  def self.search(params)
    result = Film.includes(:film_company, :description).references(:film_company, :description)

    if params['name'].present?
      result = result.where('films.name = ?', params['name'])
    end

    if params['director'].present?
      result = result.where('films.director = ?', params['director'])
    end

    if params['film_company'].present?
      result = result.where('film_companies.name = ?', params['film_company'])
    end

    if params['description'].present?
      result = result.where('descriptions.description LIKE ?', "%#{params['description']}%")
    end

    result
  end
end
