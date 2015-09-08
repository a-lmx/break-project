class HomeController < ApplicationController
  def index
    @seattle_zips = Zipcode.by_city(ApplicationController::SEATTLE_ZIPCODES)
    @vancouver_zips = Zipcode.by_city(ApplicationController::VANCOUVER_ZIPCODES)
    @language = params[:language]
  end
end
