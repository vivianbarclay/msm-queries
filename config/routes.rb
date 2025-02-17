Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { controller: "directors", action: "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:id", { controller: "directors", action: "show" }) 
  get("/actors", { controller: "actors", action: "index" })
  get("/actors/:id", { controller: "actors", action: "show" })
  get("/movies", { controller: "movies", action: "index" })
  get("/movies/:id", { controller: "movies", action: "show" })
  end
