class CreateEventCompetitors < ActiveRecord::Migration[7.0]
  def change
    create_table :event_competitors do |t|
      t.string :name
      t.string :nation
      t.string :athlete_url
      t.datetime :birthdate
      t.string :rank
      t.float :bweight
      t.string :group
      t.string :category
      t.float :snatch
      t.float :jerk
      t.float :total
      t.integer :event_id
      t.integer :athlete_id

      t.timestamps
    end
  end
end
