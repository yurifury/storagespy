class ChangeDriveAccessToBoolean < ActiveRecord::Migration
  def change
    remove_column(:storage_requests, :drive_access)
    add_column(:storage_requests, :drive_access, :datetime)
  end
end