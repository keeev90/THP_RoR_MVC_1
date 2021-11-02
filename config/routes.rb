Rails.application.routes.draw do
  get 'welcome/:user_first_name', to: 'welcome#show'
  root 'home#index'
  get 'team', to: 'team#show'
  get 'contact', to: 'contact#show'
  get 'gossip/:gossip_id', to: 'gossip#show', as: 'gossip' #ajouter un prefix pour les URL dynamiques car rails n'en créer pas automatiquement (cf $ rails routes)
  get 'user/:user_id', to: 'user#show', as: 'user' # idem
end
