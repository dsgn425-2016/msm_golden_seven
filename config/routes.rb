Rails.application.routes.draw do

  get("/directors", { :controller => "cinema", :action => "directors" })

end
