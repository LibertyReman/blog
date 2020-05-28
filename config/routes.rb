Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'edit/login'}
  resources :articles
  #ルート「/」へのGETリクエストをhome_controller.rbコントローラのindexアクションにルーティング
  root 'articles#index'

  #/aboutのURLでhome_controller.rbコントローラのaboutアクションにルーティング
  #about_pathやabout_urlといった名前付きルートの使用が可能
  #get  '/about',   to: 'home#about'

end
