Rails.application.routes.draw do
get('/', { :controller => 'movies', :action => 'index' })

end
