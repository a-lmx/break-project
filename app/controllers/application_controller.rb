class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  CITY_ZIPS = {
    seattle: ["98177", "98133", "98125", "98117", "98107", "98103", 
      "98115", "98105", "98195", "98112", "98102", "98199", "98119", "98109", 
      "98122", "98121", "98101", "98164", "98174", "98104", "98144", "98134", 
      "98136", "98126", "98116", "98106", "98118"],
    vancouver: ["98660", "98661", "98662", "98663", "98664", "98665",
      "98666", "98668", "98682", "98683", "98684", "98685", "98686", "98687"],
    tacoma: ["98401", "98402", "98403", "98404", "98405", "98406", 
      "98407", "98408", "98409", "98411", "98412", "98413", "98415", "98416", 
      "98417", "98418", "98419", "98421", "98423", "98424", "98431", "98433", 
      "98442", "98443", "98444", "98445", "98446", "98447", "98448", "98464", 
      "98465", "98466", "98471", "98481", "98490", "98493"]
  }
end
