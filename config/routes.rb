Rails.application.routes.draw do

  get 'addons/bind'
  get 'addons/cancel'
  get 'addons/order'
  get 'addons/unbind'
  
  get 'subscriptions/cancel'
  get 'subscriptions/change'
  get 'subscriptions/notice'
  get 'subscriptions/order'


  get 'users/assign'
  get 'users/unassign'
  root to: 'visitors#index'
end
