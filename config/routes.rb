Rails.application.routes.draw do

  get("/directors", { :controller => "director", :action => "show_directors" })

end
