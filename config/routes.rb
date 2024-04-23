Rails.application.routes.draw do
  
  get("/", {:controller => "routing", :action => "new_square"}) 

  get("/square/new", {:controller => "routing", :action => "new_square"}) 

  get("/square/results", {:controller => "routing", :action => "results_square"}) 

  get("/square_root/new", {:controller => "routing", :action => "new_root"}) 

  get("/square_root/results", {:controller => "routing", :action => "results_root"}) 

  get("/payment/new", {:controller => "routing", :action => "new_paymnet"})
  
  get("/payment/results", {:controller => "routing", :action => "results_payment"}) 

  get("/random/new", {:controller => "routing", :action => "new_random"}) 

  get("/random/results", {:controller => "routing", :action => "results_random"}) 

end
