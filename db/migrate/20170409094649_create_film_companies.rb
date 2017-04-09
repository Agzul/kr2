class CreateFilmCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :film_companies do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
