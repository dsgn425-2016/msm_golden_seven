Rails.application.routes.draw do

# routes to READ directors
  get("/directors", { :controller => "directors", :action => "list_directors" })
  get("/directors/:id", { :controller => "directors", :action => "show_director_details" })

# routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })
end
