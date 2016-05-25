class CreateGeofences < ActiveRecord::Migration
  def change
    create_table :geofences do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.float :radius

      t.timestamps null: false
    end
  end
end
