Rails.application.routes.draw do
  get("/directors", { :controller => 'directors', :action => 'index' })

  get("/directors/:id", { :controller => 'directors', :action => 'show' })


end
