Rails.application.routes.draw do
  #post 'send_notificaiton', to: 'slack_notifications#send_notification' 
  resources :slack_notifications do
    collection {
      post :send_notification
    }
  end
end
