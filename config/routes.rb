Rails.application.routes.draw do

  get('/', { :controller => 'movies', :action => 'index' })

# Routes for the Director sections:


# CREATE
  get('/directors/new_form',  { :controller =>'directors', :action => 'new_form'})
  get('/create_director', { :controller => 'directors', :action => 'create_row'})

# READ
  get('/directors',  { :controller => 'directors', :action => 'index'} )
  get('directors/:id', { :controller => 'directors', :action => 'show' })


# UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form'})
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row'})

# DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy'})



  # Routes for the Actor sections:

  # CREATE
    get('/actors/new_form', { :controller => 'actors', :action => 'new_form'})
    get('/create_actor', { :controller => 'actors', :action => 'create_row'})


  # READ
  get('/actors', { :controller => 'actors', :action => 'index'})
  get('/actors/:id', { :controller => 'actors', :action => 'show'})



  # UPDATE
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form'})
  get('update_actor/:id', { :controller => 'actors', :action => 'update_row'})


# DELETE
 get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy'})

end
