class CreateScrapers < ActiveRecord::Migration[7.0]
  def change
    create_table :scrapers do |t|
      t.string :athlete_name
      t.string :nation
      t.datetime :birthdate
      t.string :athlete_url
      t.float :bweight
      t.string :group
      t.string :category
      t.float :snatch
      t.float :jerk
      t.float :total
      t.string :event_name
      t.datetime :event_date
      t.string :event_url
      t.string :location

      t.timestamps
    end
  end
end
