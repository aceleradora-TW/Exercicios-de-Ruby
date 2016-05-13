class CreateGeofences < ActiveRecord::Migration
  def change
    create_table :geofences do |t|
      t.string :name
      t.float :lat, :limit => 53
      t.float :lon, :limite => 53
      t.float :radius, :limite => 53

      t.timestamps
    end
  end
end
