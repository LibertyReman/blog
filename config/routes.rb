Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #ルート「/」へのGETリクエストが来た時、application_controller.rbコントローラの
  #helloアクションにルーティングする
  root 'application#hello'
end
