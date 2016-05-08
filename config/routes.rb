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







end
