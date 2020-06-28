module ApplicationHelper
  #_header.html.erbで使用するメソッドを定義 引数にリンク名とパスを指定
  def header_link_item(name, path)
    #bootstrapで必要するクラスを代入
    class_name = 'nav-item mr-1 h4 my-0'
    #current_pageで表示するパスと引数のパスが同じかを判断している
    #同じだった場合クラスの指定にactivwを追加する
    class_name << ' active' if current_page?(path)

    #content_tagは任意のHTMLを作るためのヘルパーメソッド :liタグを作成しクラスには先ほど作ったクラス名を
    #指定している
    #liタグの中にlink_toのaタグが埋め込まれる ヘルパーの呼び出し元に返される
    content_tag :li, class: class_name do
      link_to name, path, class: 'nav-link'
    end
  end

  def default_meta_tags
    {
      site: "Liber's Blog",
      reverse: true,
      charset: 'utf-8',
      description: 'IT系を中心に少しでも役立ちそうなことを情報発信',
      keywords: "Liber's Blog,liber,mac,vim,bash,rails,プログラミング,",
      canonical: request.original_url,
      separator: '-',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('apple-touch-icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: "Liber's Blog",
        title: "Liber's Blog",
        description: 'IT系を中心に少しでも役立ちそうなことを情報発信',
        type: 'website',
        url: request.original_url,
        image: image_url('top.jpg'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        title: "Liber's Blog",
        description: 'IT系を中心に少しでも役立ちそうなことを情報発信',
        image: image_url('top.jpg')
      }
    }
  end
end
