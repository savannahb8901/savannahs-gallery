Rails.application.routes.draw do



  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Item resource:

  # CREATE
  post("/insert_item", { :controller => "items", :action => "create" })
          
  # READ
  get("/items", { :controller => "items", :action => "index" })
  
  get("/items/:path_id", { :controller => "items", :action => "show" })
  
  # UPDATE
  
  post("/modify_item/:path_id", { :controller => "items", :action => "update" })
  
  # DELETE
  get("/delete_item/:path_id", { :controller => "items", :action => "destroy" })

  #------------------------------

  # Routes for the Collection resource:

  # CREATE
  post("/insert_collection", { :controller => "collections", :action => "create" })
          
  # READ
  get("/collections", { :controller => "collections", :action => "index" })
  
  get("/collections/:path_id", { :controller => "collections", :action => "show" })
  
  # UPDATE
  
  post("/modify_collection/:path_id", { :controller => "collections", :action => "update" })
  
  # DELETE
  get("/delete_collection/:path_id", { :controller => "collections", :action => "destroy" })

  #------------------------------

  # Routes for the Gallery resource:

  # CREATE
  post("/insert_gallery", { :controller => "galleries", :action => "create" })
          
  # READ
  get("/galleries", { :controller => "galleries", :action => "index" })
  
  get("/galleries/:path_id", { :controller => "galleries", :action => "show" })
  
  # UPDATE
  
  post("/modify_gallery/:path_id", { :controller => "galleries", :action => "update" })
  
  # DELETE
  get("/delete_gallery/:path_id", { :controller => "galleries", :action => "destroy" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Piece resource:

  # CREATE
  post("/insert_piece", { :controller => "pieces", :action => "create" })
          
  # READ
  get("/pieces", { :controller => "pieces", :action => "index" })
  
  get("/pieces/:path_id", { :controller => "pieces", :action => "show" })
  
  # UPDATE
  
  post("/modify_piece/:path_id", { :controller => "pieces", :action => "update" })
  
  # DELETE
  get("/delete_piece/:path_id", { :controller => "pieces", :action => "destroy" })

  #------------------------------

end
