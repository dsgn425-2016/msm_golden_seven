Rails.application.routes.draw do

  # routes to CREATE directors
    get("/create_director_row", { :controller => "directors", :action => "create_director_row" })
    get("/directors/new_form", { :controller => "directors", :action => "new_director_form" })


  # routes to READ directors
  get("/directors", { :controller => "directors", :action => "list_directors" })
  get("/directors/:id", { :controller => "directors", :action => "show_director_details" })

  # routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })


end
