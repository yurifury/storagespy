class AddCommentsTextToStorageRequest < ActiveRecord::Migration
  def change
    add_column :storage_requests, :comments, :text
  end
end
