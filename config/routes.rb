Rails.application.routes.draw do
get('/', { :controller => 'movies', :action => 'index' })
get('/directors', { :controller => 'directors', :action => 'index' })

end
