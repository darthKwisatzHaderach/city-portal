Alpha::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'novosti' => 'news#index'
  get '/novosti/:alias', :to => 'news#show'

  get '/tv', :to => 'tv#index'

  get '/panoramas', :to => 'panoramas#index'
  get '/panoramas/:path', :to => 'panoramas#show'
  get '/panoramas/2014', :to => 'panoramas#index_2014'
  get '/panoramas/2013', :to => 'panoramas#index_2013'
  get '/panoramas/2012', :to => 'panoramas#index_2012'
  get '/panoramas/2011', :to => 'panoramas#index_2011'

  get '/about-city', :to => 'about_city#index'
  get '/city-and-neighborhood', :to => 'about_city#city_and_neighborhood'
  get '/city-and-neighborhood/:alias', :to => 'about_city#show'
  get '/companies', :to => 'about_city#companies'
  get '/companies/:alias', :to => 'about_city#show'
  get '/baes', :to => 'about_city#baes'
  get '/baes/:alias', :to => 'about_city#show'
  get '/schools', :to => 'about_city#schools'
  get '/schools/:alias', :to => 'about_city#show'
  get '/msch', :to => 'about_city#msch'
  get '/msch/:alias', :to => 'about_city#show'
  get '/clubs', :to => 'about_city#clubs'
  get '/clubs/:alias', :to => 'about_city#show'
  get '/karnaval', :to => 'about_city#karnaval'
  get '/karnaval/:alias', :to => 'about_city#show'
  get '/attractions', :to => 'about_city#attractions'
  get '/attractions/:alias', :to => 'about_city#show'
  get '/telecenter', :to => 'about_city#telecenter'
  get '/lyudi', :to => 'about_city#lyudi'
  get '/lyudi/:alias', :to => 'about_city#show'

  get 'contacts', :to => 'footer#contacts'
  get 'commercial', :to => 'footer#commercial'
  get 'about', :to => 'footer#about'

  get 'aleschenkova-boulevard-gallery', :to => 'galleries#aleschenkova_boulevard_gallery', :as => 'aleschenkova_boulevard_gallery'
  get 'baes-gallery', :to => 'galleries#baes_gallery', :as => 'baes_gallery'
  get 'carnaval-gallery-part-3', :to => 'galleries#carnaval_gallery_part_3', :as => 'carnaval_gallery_part_3'
  get 'carnaval-gallery-part-2', :to => 'galleries#carnaval_gallery_part_2', :as => 'carnaval_gallery_part_2'
  get 'carnaval-gallery-part-1', :to => 'galleries#carnaval_gallery_part_1', :as => 'carnaval_gallery_part_1'
  get 'city-from-above', :to => 'galleries#city_from_above', :as => 'city_from_above'
  get 'old-zarechny', :to => 'galleries#old_zarechny', :as => 'old_zarechny'
  get 'year-2011', :to => 'galleries#year_2011', :as => 'year_2011'
  resources :galleries 

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
