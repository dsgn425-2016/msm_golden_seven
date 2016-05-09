Rails.application.routes.draw do

get("/", { :controller => "movies", :action => "index" })


#Movies
get("/movies", { :controller => "movies", :action => "index" })
get("/movies/new_form", { :controller => "movies", :action => "new_form" })
get("/create_movie", { :controller => "movies", :action => "create_row" })
get("/movies/:id", { :controller => "movies", :action => "show" })
get("movies/delete_movie/:id", { :controller => "movies", :action => "destroy" })
get("/movies/edit/:id", { :controller => "movies", :action => "edit" })
get("/movies/update/:id", { :controller => "movies", :action => "update" })

#Directors
get("/directors", { :controller => "directors", :action => "index" })
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/new_form", {:controller => "directors", :action => "new_form" })
get("/create_director", { :controller => "directors", :action => "create_row" })
get("/directors/:id", { :controller => "directors", :action => "show" })
get("directors/delete_director/:id", { :controller => "directors", :action => "destroy" })
get("/directors/edit/:id", { :controller => "directors", :action => "edit" })
get("/directors/update/:id", { :controller => "directors", :action => "update" })

#Actors
get("/actors", { :controller => "actors", :action => "index" })
get("/actors", { :controller => "actors", :action => "index" })
get("/actors/new_form", {:controller => "actors", :action => "new_form" })
get("/create_actor", { :controller => "actors", :action => "create_row" })
get("/actors/:id", { :controller => "actors", :action => "show" })
get("actors/delete_actor/:id", { :controller => "actors", :action => "destroy" })
get("/actors/edit/:id", { :controller => "actors", :action => "edit" })
get("/actors/update/:id", { :controller => "actors", :action => "update" })
end
