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

end
