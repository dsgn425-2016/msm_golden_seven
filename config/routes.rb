Rails.application.routes.draw do
get('/', { :controller => 'movies', :action => 'index' })

get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/edit_director/:id', { :controller => 'directors', :action => 'edit_row' })

get('/delete_director/:id', { :controller => 'directors', :action => 'delete' })

get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'new_row' })

get('/directors/:id', { :controller => 'directors', :action => 'view' })
get('/directors', { :controller => 'directors', :action => 'index' })




get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
get('/edit_actor/:id', { :controller => 'actors', :action => 'edit_row' })

get('/delete_actor/:id', { :controller => 'actors', :action => 'delete' })

get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
get('/create_actor', { :controller => 'actors', :action => 'new_row' })

get('/actors/:id', { :controller => 'actors', :action => 'view' })
get('/actors', { :controller => 'actors', :action => 'index' })


get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
get('/edit_movie/:id', { :controller => 'movies', :action => 'edit_row' })

get('/delete_movie/:id', { :controller => 'movies', :action => 'delete' })

get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
get('/create_movie', { :controller => 'movies', :action => 'new_row' })

get('/movies/:id', { :controller => 'movies', :action => 'view' })
get('/movies', { :controller => 'movies', :action => 'index' })
end
