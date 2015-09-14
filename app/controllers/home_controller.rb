class HomeController < ApplicationController
  def index
    @cities = ["Seattle", "Tacoma", "Vancouver"]
    @languages = Language.by_name

    @language = params[:language_id]
    @city = params[:city].to_sym

    @city_zips = Zipcode.by_city(ApplicationController::CITY_ZIPS[@city])
  end
end
