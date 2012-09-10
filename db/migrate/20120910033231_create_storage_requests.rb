class CreateStorageRequests < ActiveRecord::Migration
  def change
    create_table :storage_requests do |t|
      t.string :postcode
      t.boolean :climate
      t.string :drive_access
      t.boolean :all_day
      t.string :email
      t.string :phone
      t.datetime :move_in_date

      t.timestamps
    end
  end
end
