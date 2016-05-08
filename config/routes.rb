Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "list_movies"})

  # routes to CREATE directors
  get("/create_director_row", { :controller => "directors", :action => "create_director_row" })
  get("/directors/new_form", { :controller => "directors", :action => "new_director_form" })


  # routes to READ directors
  get("/directors", { :controller => "directors", :action => "list_directors" })
  get("/directors/:id", { :controller => "directors", :action => "show_director_details" })

  # routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })

  # routes to EDIT directors
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_director" })
  get("/update_director_row/:id", { :controller => "directors", :action => "update_director_row" })


  # routes to CREATE actors
  get("/create_actor_row", { :controller => "actors", :action => "create_actor_row" })
  get("/actors/new_form", { :controller => "actors", :action => "new_actor_form" })


  # routes to READ actors
  get("/actors", { :controller => "actors", :action => "list_actors" })
  get("/actors/:id", { :controller => "actors", :action => "show_actor_details" })

  # routes to DELETE actors
  get("/delete_actor/:id", { :controller => "actors", :action => "delete_actor" })

  # routes to EDIT actors
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_actor" })
  get("/update_actor_row/:id", { :controller => "actors", :action => "update_actor_row" })


  # routes to CREATE movies
  get("/create_movie_row", { :controller => "movies", :action => "create_movie_row" })
  get("/movies/new_form", { :controller => "movies", :action => "new_movie_form" })


  # routes to READ movies
  get("/movies", { :controller => "movies", :action => "list_movies" })
  get("/movies/:id", { :controller => "movies", :action => "show_movie_details" })

  # routes to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })

  # routes to EDIT movies
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_movie" })
  get("/update_movie_row/:id", { :controller => "movies", :action => "update_movie_row" })

end
