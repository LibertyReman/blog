class User < ApplicationRecord
  #devise機能のサインアップ・パスワード再設定のURLにアクセスできないようにする
  devise :database_authenticatable,
         :rememberable, :validatable
end
