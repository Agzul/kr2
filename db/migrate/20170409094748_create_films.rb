class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :year
      t.string :director
      t.references :film_company, foreign_key: true

      t.timestamps
    end
  end
end
