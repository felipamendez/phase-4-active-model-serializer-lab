class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_one :profile
  has_many :posts
  has_many :post_tages
  has_many :tags, through: :post_tages
  
  def short_content
    "#{self.object.content[0..39]}..."
  end
end
