Rails.application.routes.draw do

#Routes to default page
get("/", { :controller => "movies", :action => "index"})
#Movies
get("/movies", {:controller => "movies", :action => "index"})

#Directors
get("/directors", {:controller => "directors", :action => "index"})

#Actors
get("/actors", {:controller => "actors", :action => "index"})

#Routes to CREATE movies

end
