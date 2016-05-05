Rails.application.routes.draw do


# Routes for the Director sections:


# CREATE

# READ
  get("/directors",  { :controller => "directors", :action => "index"} )
  get("directors/:id", { :controller => "directors", :action => "show" })


# UPDATE


# DELETE







end
