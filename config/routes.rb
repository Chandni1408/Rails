# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#               departments GET    /departments(.:format)                                                                   departments#index
#                           POST   /departments(.:format)                                                                   departments#create
#            new_department GET    /departments/new(.:format)                                                               departments#new
#           edit_department GET    /departments/:id/edit(.:format)                                                          departments#edit
#                department GET    /departments/:id(.:format)                                                               departments#show
#                           PATCH  /departments/:id(.:format)                                                               departments#update
#                           PUT    /departments/:id(.:format)                                                               departments#update
#                           DELETE /departments/:id(.:format)                                                               departments#destroy
#              sessions_new GET    /sessions/new(.:format)                                                                  sessions#new
#                     login GET    /login(.:format)                                                                         sessions#new
#                           POST   /login(.:format)                                                                         sessions#create
#                    logout DELETE /logout(.:format)                                                                        sessions#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  get 'login_master/new'
  get 'emp_payroll/index'
  #get 'designation/new'
  #get 'designation/index'
  #get 'department/index'
  resources :department do
    get 'home'
  end
  resources :designation
  resources :emp_accounting_profile
  resources :emp_oraganization_profile
  resources :emp_work_profile
  resources :emp_master
  get    '/deshboard/:id(.:format)',   to: 'dashboard#deshboard'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
