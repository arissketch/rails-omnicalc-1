Rails.application.routes.draw do

  get("/", {:controller => "main", :action => "square"})
  get("/square/new", {:controller => "main", :action => "square"})
  get("/square/results", {:controller => "main", :action => "squareresults"})



  
end
