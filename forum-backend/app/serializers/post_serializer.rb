class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id, :board_id
  has_many :comments
  belongs_to :user
end
