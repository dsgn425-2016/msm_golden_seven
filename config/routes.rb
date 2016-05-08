Rails.application.routes.draw do


  # Basic route:
get('/', { :controller => 'movies', :action => 'index' })

# DIRECTOR ROUTES

# Create Director routes:
get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'create_row' })


# Read  Director routes:
get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show' })

#Update Director Routes
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', { :controller => 'directors', :action => 'update_director' })

#Delete Director Routes
get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

# DIRECTOR ROUTES

# Create Director routes:
get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'create_row' })


# Read  Director routes:
get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show' })

#Update Director Routes
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', { :controller => 'directors', :action => 'update_director' })

#Delete Director Routes
get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })



# MOVIE ROUTES

# Create movie routes:
get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
get('/create_movie', { :controller => 'movies', :action => 'create_row' })


# Read  Movie routes:
get('/movies', { :controller => 'movies', :action => 'index' })
get('/movies/:id', { :controller => 'movies', :action => 'show' })

#Update Movie Routes
get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
get('/update_movie/:id', { :controller => 'movies', :action => 'update_movie' })

#Delete Movie Routes
get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })


end
