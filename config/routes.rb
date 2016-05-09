Rails.application.routes.draw do

# INDEX of actors
get("/actors",    {:controller => "actors", :action => "index"})

# CREATE
get("/new_form",   {:controller => "actors", :action => "new_form"})
get("/create_row", {:controller => "actors", :action =>"create_row"})

# UPDATE

get("/actors/:id/edit_form", {:controller => "actors", :action => "edit_form"})
get("/update_actors/:id",    {:controller => "actors", :action => "update_row"})

#READ the individual page for an actor

get("/actors/:id",{:controller => "actors", :action => "show"})

# DELETE an actor

get("/delete_actor/:id",  {:controller => "actors", :action => "delete_row"})



end
