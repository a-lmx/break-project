class Zipcode < ActiveRecord::Base
  # SCOPES ---------------------------------------------------------------------
  scope :by_city, -> (list_of_zipcodes) { Zipcode.where(zipcode: list_of_zipcodes) }
end
