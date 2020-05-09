class Tag < ApplicationRecord
  #一つのタグが複数のarticle_tag_relationsデータを持つ
  #削除時に関連するタグのヒモ付を削除
  has_many :article_tag_relations, dependent: :delete_all
  #一つのタグが複数のarticlesを持つ throughでarticle_tag_relationsと関連付け
  has_many :articles, through: :article_tag_relations
end
