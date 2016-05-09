Rails.application.routes.draw do

  # Routes to READ photos
  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })


end
