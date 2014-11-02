Rails.application.routes.draw do
  get 'subscriptions/order'
  get 'subscriptions/change'
  get 'subscriptions/cancel'
  get 'subscriptions/notice'

  root to: 'visitors#index'
end
