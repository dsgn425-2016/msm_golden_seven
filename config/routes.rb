Rails.application.routes.draw do

#Default
  get("/", { :controller => 'movies', :action => 'index' })

#Actors

get("/actors", { :controller => 'actors', :action => 'index' })

get("/new_actor_form/", { :controller => 'actors', :action => 'create_form' })

get("/add_actor/", { :controller => 'actors', :action => 'new_row' })

get("/actors/:id/edit_form", { :controller => 'actors', :action => 'edit_form' })

get("/actors/update/:id", { :controller => 'actors', :action => 'update' })

get("/delete_actor/:id", { :controller => 'actors', :action => 'delete_row' })

get("/actors/:id", { :controller => 'actors', :action => 'show' })

#Movies

get("/movies", { :controller => 'movies', :action => 'index' })

get("/new_movie_form/", { :controller => 'movies', :action => 'create_form' })

get("/add_movie/", { :controller => 'movies', :action => 'new_row' })

get("/movies/:id/edit_form", { :controller => 'movies', :action => 'edit_form' })

get("/movies/update/:id", { :controller => 'movies', :action => 'update' })

get("/delete_movie/:id", { :controller => 'movies', :action => 'delete_row' })

get("/movies/:id", { :controller => 'movies', :action => 'show' })


#Directors
  get("/directors", { :controller => 'directors', :action => 'index' })

  get("/new_director_form/", { :controller => 'directors', :action => 'create_form' })

  get("/add_director/", { :controller => 'directors', :action => 'new_row' })

  get("/directors/:id/edit_form", { :controller => 'directors', :action => 'edit_form' })

  get("/directors/update/:id", { :controller => 'directors', :action => 'update' })

  get("/delete_director/:id", { :controller => 'directors', :action => 'delete_row' })

  get("/directors/:id", { :controller => 'directors', :action => 'show' })


end
