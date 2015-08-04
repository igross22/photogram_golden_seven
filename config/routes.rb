Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos/new",       { :controller => "photos", :action => "new" })
  get("/photos/:id/edit",  { :controller => "photos", :action => "edit" })
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos/delete_photo/:id",    { :controller => "photos", :action => "destroy" })

end

