class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.references :film, foreign_key: true
      t.text :description
      t.string :keywords

      t.timestamps
    end
  end
end
