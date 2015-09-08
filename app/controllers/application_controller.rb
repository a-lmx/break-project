class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  SEATTLE_ZIPCODES = ["98177", "98133", "98125", "98117", "98107", "98103", 
    "98115", "98105", "98195", "98112", "98102", "98199", "98119", "98109", 
    "98122", "98121", "98101", "98164", "98174", "98104", "98144", "98134", 
    "98136", "98126", "98116", "98106", "98118"]

  VANCOUVER_ZIPCODES = ["98660", "98661", "98662", "98663", "98664", "98665",
    "98666", "98668", "98682", "98683", "98684", "98685", "98686", "98687"]
end
