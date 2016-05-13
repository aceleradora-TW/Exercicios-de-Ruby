class AddUserIdToGeofence < ActiveRecord::Migration
  def change
    add_column :geofences, :user_id, :integer
  end
end
