Rails.application.routes.draw do
  #ルート「/」へのGETリクエストをhome_controller.rbコントローラのindexアクションにルーティング
  root 'home#index'

end
