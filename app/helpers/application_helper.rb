module ApplicationHelper
  #_header.html.erbで使用するメソッドを定義 引数にリンク名とパスを指定
  def header_link_item(name, path)
    #bootstrapのデザインに合わせるために必要なクラス
    class_name = 'nav-item'
    #current_pageで表示するパスと引数のパスが同じかを判断している
    #同じだった場合クラスの指定にactivwを追加する
    class_name << ' active' if current_page?(path)

    #content_tagは任意のHTMLを作るためのヘルパーメソッド :liタグを作成しクラスには先ほど作ったクラス名を
    #指定している
    #liタグの中にlink_toのaタグが埋め込まれる　ヘルパーの呼び出し元に返される
    content_tag :li, class: class_name do
      link_to name, path, class: 'nav-link'
    end
  end
end
