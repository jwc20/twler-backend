class CreateAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :nation
      t.datetime :born
      t.string :athlete_url

      t.timestamps
    end
  end
end
