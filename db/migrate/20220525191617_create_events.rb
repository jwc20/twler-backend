class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :event_date
      t.string :event_url

      t.timestamps
    end
  end
end
