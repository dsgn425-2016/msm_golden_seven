Rails.application.routes.draw do
  get("/", {:controller =>"movies", :action =>"index"})
  #Routes for MOVIES:
  #Routes to CREATE
  get("/movies/new", {:controller =>"movies", :action =>"new_form"})
  get("/create_movie", { :controller => "movies", :action => "create_row" })

#Routes to READ
  get("/movies", {:controller =>"movies", :action =>"index"})
  get("/movies/:id", {:controller =>"movies", :action =>"show"})

#Routes to DELETE
  get("/delete_movie/:id", {:controller =>"movies", :action =>"delete"})

#Routes to UPDATE
  get("/movies/:id/edit", {:controller =>"movies", :action =>"edit_form"})
  get("/update_movie/:id", {:controller =>"movies", :action =>"update_row"})

#---------------------------------------------------------------------------------
  #Routes for DIRECTORS:
  #Routes to CREATE
  get("/directors/new", {:controller =>"directors", :action =>"new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row" })

#Routes to READ
  get("/directors", {:controller =>"directors", :action =>"index"})
  get("/directors/:id", {:controller =>"directors", :action =>"show"})

#Routes to DELETE
  get("/delete_director/:id", {:controller =>"directors", :action =>"delete"})

#Routes to UPDATE
  get("/directors/:id/edit", {:controller =>"directors", :action =>"edit_form"})
  get("/update_director/:id", {:controller =>"directors", :action =>"update_row"})

#---------------------------------------------------------------------------------
#Routes for ACTORS:
#Routes to CREATE
get("/actors/new", {:controller =>"actors", :action =>"new_form"})
get("/create_actor", { :controller => "actors", :action => "create_row" })

#Routes to READ
get("/actors", {:controller =>"actors", :action =>"index"})
get("/actors/:id", {:controller =>"actors", :action =>"show"})

#Routes to DELETE
get("/delete_actor/:id", {:controller =>"actors", :action =>"delete"})

#Routes to UPDATE
get("/actors/:id/edit", {:controller =>"actors", :action =>"edit_form"})
get("/update_actor/:id", {:controller =>"actors", :action =>"update_row"})


end
