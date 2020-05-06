class Article < ApplicationRecord
  #一つの記事が複数のarticle_tag_relationsデータを持つ
  #削除時に関連するタグのヒモ付を削除
  has_many :article_tag_relations, dependent: :delete_all
  #一つの記事が複数のtagsを持つ throughでarticle_tag_relationsと関連付け
  has_many :tags, through: :article_tag_relations

  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true
  validates :tag_ids, presence: true

  attachment :image
end
