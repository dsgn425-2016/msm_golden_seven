Rails.application.routes.draw do
  #landing page
  get('/', { :controller => 'movies', :action => 'index' })

  #MOVIES:

  #create movie
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })

  #read movie
  # READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  # edit movie
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

  # delete movie
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })

  #DIRECTORS:
  # create director
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })

  # show directors
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  # edit directors
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  # delete directors
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

  #ACTORS:

  # create actors
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })

  # see actors
  get('/actors', { :controller => 'actors', :action => 'index' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })

  # edit actors
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

  # delete actors
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

end
