class StorageRequest < ActiveRecord::Base
  attr_accessible :all_day, :climate, :drive_access, :email, :move_in_date, :phone, :postcode
  
  validates :email, :phone, :postcode, presence: true

  def postcodes
    require 'csv'
    postcodes = []
    CSV.foreach("data/postcodes.csv") do |row|
      postcodes << row.join(' - ')
    end
    postcodes
  end
end
