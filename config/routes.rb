Rails.application.routes.draw do


# Routes for the Director sections:


# CREATE
  get("/directors/new_form",  { :controller =>"directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row"})

# READ
  get("/directors",  { :controller => "directors", :action => "index"} )
  get("directors/:id", { :controller => "directors", :action => "show" })


# UPDATE


# DELETE







end
