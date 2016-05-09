Rails.application.routes.draw do

# INDEX of actors
get("/actors",    {:controller => "actors", :action => "index"})

# CREATE
get("/actors/new_form",   {:controller => "actors", :action => "new_form"})
get("/actors/create_row", {:controller => "actors", :action =>"create_row"})

# UPDATE

get("/actors/:id/edit_form", {:controller => "actors", :action => "edit_form"})
get("/update_actors/:id",    {:controller => "actors", :action => "update_row"})

#READ the individual page for an actor

get("/actors/:id",{:controller => "actors", :action => "show"})

# DELETE an actor

get("/delete_actor/:id",  {:controller => "actors", :action => "delete_row"})

#_____________________________________
#DIRECTORS resources
# INDEX of actors
get("/directors",    {:controller => "directors", :action => "index"})

# CREATE
get("/directors/new_form",   {:controller => "directors", :action => "new_form"})
get("/directors/create_row", {:controller => "directors", :action =>"create_row"})

# UPDATE

get("/directors/:id/edit_form", {:controller => "directors", :action => "edit_form"})
get("/update_directors/:id",    {:controller => "directors", :action => "update_row"})

#READ the individual page for an actor

get("/directors/:id",{:controller => "directors", :action => "show"})

# DELETE an actor

get("/delete_director/:id",  {:controller => "directors", :action => "delete_row"})

end
